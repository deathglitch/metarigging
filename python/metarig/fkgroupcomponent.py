import pymel.core as pm
import component
import keyablecomponent
import fkcomponent
import metautil
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging
import metanode_base

class FKGroupComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, side, region, chains, grip_group_pivot = None, lock_child_rotate_axes=[], lock_child_translate_axes=['tx', 'ty', 'tz'], lock_root_rotate_axes=[], lock_root_translate_axes=['tx', 'ty', 'tz'], children_zero_transforms = True):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        start_joint = chains[0]
        end_joint = chains[0]
        
        if grip_group_pivot:
            start_joint = grip_group_pivot
            end_joint = grip_group_pivot
        
        fk_group_node = keyablecomponent.KeyableComponent.create(metanode_parent, FKGroupComponent.__name__, FKGroupComponent.LATEST_VERSION, side, region, component_pivot=start_joint)
                
        do_not_touch = fk_group_node.get_do_not_touch()
        ctrls_group = fk_group_node.get_ctrls_group()

        fk_nodes = []
        for x, chain in enumerate(chains):
            start = chain
            end = pm.listRelatives(chain, ad=1)[0]
            fk_node = fkcomponent.FKComponent.create(metanode_parent = metanode_parent, start_joint = start, end_joint = end, side = side, region = region, lock_child_rotate_axes=lock_child_rotate_axes, children_zero_transforms=children_zero_transforms, lock_root_translate_axes=lock_root_translate_axes)
            fk_nodes.append(fk_node)
            fk_node.set_metanode_parent(fk_group_node)
            fk_do_not_touch_group = fk_node.get_do_not_touch()
            fk_do_not_touch_group.setParent(do_not_touch)
            fk_grip_grp = fk_node.get_ctrls_group()
            fk_grip_grp.setParent(ctrls_group)
            
        fk_group_node.connect_ordered_nodes_to_metanode(fk_nodes, 'fk_chains', parent_attr = 'fk_chain_group')

        orig_ns.setCurrent()
        
        return fk_group_node
        
    def get_fk_components(self):
        components = []
        for fk_chain_node in self.fk_chains.listConnections():
            components.append(metanode_base.MetaNode(fk_chain_node))
        return components
        
    def get_component(self, side, region):
        fk_components = self.get_fk_components()
        result = None
        if self.get_side().strip().lower() == str(side).strip().lower() and self.get_region().strip().lower() == str(region).strip().lower():
            result = self
        if not result:
            for component in fk_components:
                if component.get_component(side, region):
                    result = component.get_component(side, region)
        return result
        
    def get_grips(self):
        grips = []
        for component in self.get_fk_components():
            flags += component.get_grips()
        return grips

    def get_bind_joints(self):
        bind_joints = []
        for component in self.get_fk_components():
            bind_joints += component.get_bind_joints()
        return bind_joints

    def select_grips(self):
        pm.select(self.get_grips())

    def key_grips(self):
        grips = self.get_grips()
        pm.setKeyframe(grips)

    def to_default_pose(self):
        for component in self.get_fk_components():
            component.to_default_pose()
            
    def attach_to_component(self, attach_component, location, point = True, orient = True):
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        for fk_component in self.get_fk_components():
            fk_component.attach_to_component(attach_component, location, point, orient)
            if point:
                #attach_component.attached_components >> self.attach_point_component
                self.attach_point_location.set(location)
            if orient:
                #attach_component.attached_components >> self.attach_orient_component
                self.attach_orient_location.set(location)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        for fk_component in self.get_fk_components:
            fk_component.attach_to_joint(attach_joint, point, orient)
            if point:
                self.attach_point_location.set(attach_joint.nodeName())
            if orient:
                self.attach_orient_location.set(attach_joint.nodeName())
        return
        
    def attach_to_skeleton(self, namespace = None):
        '''Attaches grips to a baked skeleton in the specified namespace'''
        grips = []
        constraints = []
        for component in self.get_fk_components():
            grip, const = component.attach_to_skeleton(namespace = namespace)
            grips += grip
            constraints += const
        return [grips, constraints]
        
    def bake_and_detach(self, objects, constraints, attrs = None):
        '''Bakes grips and detaches from baked skeleton.'''
        if not attrs:
            attrs = ["rx", "ry", "rz"]
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, attrs = attrs, time = (start_time, end_time))
        pm.delete(constraints)
        return
        
    def bake_to_skeleton(self):
        bind_joints = self.bind_joints.listConnections()
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, time = (start_time, end_time))
        return
        
    def bake_on_to_skeleton(self, namespace = None):
        components = self.get_fk_components()
        for component in components:
            component.bake_on_to_skeleton(namespace = namespace)
        
    def _find_attach_point(self, location = None):
        return self.get_grip_group()
    
    def remove(self, bake = False):
        '''remove everything about this rig implementation'''
        components = self.get_fk_components()
        for component in components:
            component.remove(bake = bake)
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch()
        pm.delete([self, dnt_group, grip_group])
        return