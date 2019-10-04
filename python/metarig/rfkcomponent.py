import pymel.core as pm
import component
import keyablecomponent
import metautil
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class RfkComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        rfknode = keyablecomponent.KeyableComponent.create(metanode_parent, RfkComponent.__name__, RfkComponent.LATEST_VERSION, side, region, component_pivot=start_joint)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nt.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        
        do_not_touch = rfknode.get_do_not_touch()
        ctrls_group = rfknode.get_ctrls_group()
        rfk_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        rfk_chain_result = rigging.rig_rfk_chain(rfk_chain[0], rfk_chain[-1])
        mid_grips = rfk_chain_result['mid_grips']
        end_twist_grip = rfk_chain_result['end_twist_grip']
        start_twist_grip = rfk_chain_result['start_twist_grip']
        mid_groups = rfk_chain_result['mid_groups']
        rfk_chain[0].setParent(do_not_touch)
        rfk_chain[0].jointOrientX.set(0)
        for grp in mid_groups:
            grp.setParent(do_not_touch)
        for gr in mid_grips:
            gr.setParent(ctrls_group)
        end_twist_grip.setParent(ctrls_group)
        start_twist_grip.setParent(ctrls_group)
        
        rfknode.connect_ordered_nodes_to_metanode(mid_grips, 'grips')
        rfknode.connect_ordered_nodes_to_metanode(rfk_chain, 'rfk_chain')
        rfknode.connect_node_to_metanode(end_twist_grip, 'top_twist_grip')
        rfknode.connect_node_to_metanode(start_twist_grip, 'bottom_twist_grip')
        rfknode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')
        
        for base, rfk in zip(chain_between, rfk_chain)[:-1]:
            pm.parentConstraint(rfk, base, w=1, mo=1)
            
        for grip in [end_twist_grip, start_twist_grip] + mid_grips:
            grip.lock_and_hide_attrs(['tx', 'ty', 'tz','sx', 'sy', 'sz','v'])
        
        orig_ns.setCurrent()
        
        return rfknode
        
    def get_grips(self):
        grips = self.grips.listConnections()
        grips.append(self.get_top_twist_grip())
        grips.append(self.get_bottom_twist_grip())
        grips = map(lambda x: rigging.Grip(x), grips)
        return grips

    def get_top_twist_grip(self):
        grip = self.top_twist_grip.listConnections()[0]
        return grip
        
    def get_bottom_twist_grip(self):
        grip = self.bottom_twist_grip.listConnections()[0]

    def get_start_grip(self):
        grip = self.get_bottom_twist_grip
        return grip

    def get_end_grip(self):
        grips = self.get_top_twist_grip()
        return grips
        
    def get_main_grips(self):
        return [self.get_top_twist_grip()] + [self.get_bottom_twist_grip()]

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
        dnt_group = self.get_do_not_touch()
        attrs = dnt_group.translate.children() + dnt_group.rotate.children()
        metautil.unlock_and_show_attrs(attrs)
        if point:
            dnt_cons = dnt_group.tx.listConnections()
            if dnt_cons and isinstance(dnt_cons[0], pm.nt.ParentConstraint):
                pm.delete(dnt_cons[0])
            grip_cons = grip_group.tx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])

            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            pm.parentConstraint(parent_node, dnt_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_point_component
            self.attach_point_location.set(location)
        if orient:
            dnt_cons = dnt_group.rx.listConnections()
            if dnt_cons and isinstance(dnt_cons[0], pm.nt.ParentConstraint):
                pm.delete(dnt_cons[0])
            grip_cons = grip_group.rx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            pm.parentConstraint(parent_node, dnt_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_orient_component
            self.attach_orient_location.set(location)
        metautil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch_group()
        attrs = dnt_group.translate.children() + dnt_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            dnt_cons = dnt_group.tx.listConnections()
            if dnt_cons and isinstance(dnt_cons[0], pm.nt.ParentConstraint):
                pm.delete(dnt_cons[0])
            grip_cons = grip_group.tx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            pm.parentConstraint(attach_joint, dnt_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            self.attach_point_location.set(attach_joint.name())
        if orient:
            #delete old constraints
            dnt_cons = dnt_group.rx.listConnections()
            if dnt_cons and isinstance(dnt_cons[0], pm.nt.ParentConstraint):
                pm.delete(dnt_cons[0])
            grip_cons = grip_group.rx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            pm.parentConstraint(attach_joint, dnt_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            self.attach_orient_location.set(attach_joint.name())
        metautil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_skeleton(self, namespace = None, include_twist_grips = 0):
        '''Attaches grips to a baked skeleton in the specified namespace'''
        tweak_grips = self.grips.listConnections()
        bottom_grip = grip.Grip(self.bottom_twist_grip.listConnections()[0])
        top_grip = grip.Grip(self.top_twist_grip.listConnections()[0])
        bind_joints = [self.bind_joints.listConnections()[0]] + [self.bind_joints.listConnections()[-1]]
        if include_twist_grips:
            all_grips = [bottom_grip] + tweak_grips + [top_grip]
            bind_joints = self.bind_joints.listConnections()
        else:
            all_grips = [bottom_grip] + [top_grip]
        if namespace is None:
            namespace = miscutil.get_namespace(bind_joints[0])
        bind_joints = map(lambda x: x.swapNamespace(namespace), bind_joints)

        constraints = []
        grips = []
        for inc in xrange(len(all_grips)):
            grip = all_grips[inc]
            jnt = bind_joints[inc]
            const = miscutil.orient_constraint_safe(jnt, grip, 0)
            constraints.append(const)
            grips.append(grip)
            
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
        
    def _find_attach_point(self, location):
        if location.lower() == 'start':
            return self.get_bind_joints()[0]
        elif location.lower() == 'mid' or location.lower() == 'middle':
            bind_joints = self.get_bind_joints()
            return bind_joints[len(bind_joints)/2]
        elif location.lower() == 'end':
            end = self.get_bind_joints()[-1]
            return end
        else:
            raise StandardError('location given should be "start", "middle" or "end"')
    
    def remove(self, bake = False):
        '''remove everything about this rig implementation'''
        if bake:
            self.bake_to_skeleton()
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch()
        pm.delete([self, dnt_group, grip_group])
        return