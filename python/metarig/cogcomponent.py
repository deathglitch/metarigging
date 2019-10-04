import pymel.core as pm
import component
import keyablecomponent
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class CogComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region, scale=10):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        cognode = keyablecomponent.KeyableComponent.create(metanode_parent, CogComponent.__name__, CogComponent.LATEST_VERSION, side, region, component_pivot = start_joint)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nodetypes.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        
        do_not_touch = cognode.get_do_not_touch()
        ctrls_group = cognode.get_ctrls_group()
        
        cog_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        cog_chain_result = rigging.rig_cog_chain(cog_chain[0], cog_chain[-1], scale)

        cog_grip = cog_chain_result['grips'][0]
        cog_zero = rigutil.get_zero_transform(cog_grip)
        pm.parent(cog_zero, ctrls_group)
        cog_chain[0].setParent(do_not_touch)
        #do_not_touch.setParent(metanode_parent.get_do_not_touch_group())
        #ctrls_group.setParent(metanode_parent.get_ctrls_group())
        
        cognode.connect_node_to_metanode(cog_grip, 'cog_grip')
        cognode.connect_ordered_nodes_to_metanode(cog_chain, 'cog_chain')
        cognode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')
        
        cog_grip.lock_and_hide_attrs(['sx', 'sy', 'sz', 'v'])
        pm.parentConstraint(cog_chain[0], chain_between[0])
        orig_ns.setCurrent()
        
        return cognode
        
    def get_grips(self):
        grips = self.cog_grip.listConnections()
        grips = map(lambda x: rigging.Grip(x), grips)
        return grips
        
    def get_cog_grip(self):
        return self.cog_grip.listConnections()[0]

    def get_bind_joints(self):
        return self.bind_joints.listConnections()

    def select_grips(self):
        pm.select(self.get_grips())

    def key_grips(self):
        grips = self.get_grips()
        pm.setKeyframe(grips)

    def to_default_pose(self):
        grips = self.get_grips()
        for grip in grips:
            miscutil.reset_attrs(grip)
            
    def attach_to_component(self, attach_component, location, point = True, orient = True):
        #attach_component = component.Component(attach_component)
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = self.get_ctrls_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        metautil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections(d=0) + grip_group.ty.listConnections(d=0) + grip_group.tz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_point_component
            self.attach_point_location.set(location)
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections(d=0) + grip_group.ry.listConnections(d=0) + grip_group.rz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_orient_component
            self.attach_orient_location.set(location)
        metautil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        grip_group = self.get_ctrls_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        metautil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections(d=0) + grip_group.ty.listConnections(d=0) + grip_group.tz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            self.attach_point_location.set(attach_joint.name())
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections(d=0) + grip_group.ry.listConnections(d=0) + grip_group.rz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            self.attach_orient_location.set(attach_joint.name())
        metautil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_skeleton(self, namespace = None):
        '''Attaches grips to a baked skeleton in the specified namespace'''
        cog_grip = map(lambda x: rigging.Grip(x), self.cog_grip.listConnections())
        bind_joints = self.bind_joints.listConnections()
        if namespace is None:
            namespace = miscutil.get_namespace(bind_joints[0])
        bind_joints = map(lambda x: x.swapNamespace(namespace), bind_joints)

        const = miscutil.parent_constraint_safe(bind_joints[0], cog_grip, 0)
        constraints = [const]
            
        return [cog_grips, constraints]
        
    def bake_and_detach(self, objects, constraints):
        '''Bakes grips and detaches from baked skeleton.'''
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, time = (start_time, end_time))
        pm.delete(constraints)
        return
        
    def bake_to_skeleton(self):
        bind_joints = self.bind_joints.listConnections()
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, time = (start_time, end_time))
        return
        
    def _find_attach_point(self, location):
        return self.get_grips()[-1]
    
    def remove(self, bake = False):
        '''remove everything about this rig implementation'''
        if bake:
            self.bake_to_skeleton()
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch()
        pm.delete([self, dnt_group, grip_group])
        return