import pymel.core as pm
import component
import keyablecomponent
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import rigging

class IKComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        iknode = keyablecomponent.KeyableComponent.create(metanode_parent, IKComponent.__name__, IKComponent.LATEST_VERSION, side, region)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nodetypes.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        if not (len(chain_between) == 3 or len(chain_between) == 4):
            raise StandardError("There can only be 3 joints between start_joint and end_joint inclusively")

        middle_joint = chain_between[1]

        do_not_touch = iknode.get_do_not_touch()
        ctrls_group = iknode.get_ctrls_group()
        
        ik_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        ik_chain_result = rigging.rig_ik_rp_chain(ik_chain[0], ik_chain[-1], region = region)
        
        #edit results
        ik = ik_chain_result['ik_handle']
        ik_zero_group = ik_chain_result['ik_zero']
        ik_zero_group.visibility.set(0)
        pv_grip = ik_chain_result['pv_grip']
        ik_grip = ik_chain_result['ik_grip']
        pv_line = ik_chain_result['pv_line']
        pv_grip.visibility >> pv_line.visibility
        pv_grip.overrideVisibility >> pv_line.overrideVisibility
        pv_grip.overrideEnabled >> pv_line.overrideEnabled

        #parenting
        ik_zero_grp = ik_grip.get_zero_transform()
        pv_zero_grp = pv_grip.get_zero_transform()
        ik_chain_start = ik_chain_result['start_joint']
        pm.parent([pv_line, ik_zero_group, ik_chain_start], do_not_touch)
        pm.parent([ik_zero_grp, pv_zero_grp], ctrls_group)
        #pm.parent([ik_grip, pv_grip], ctrls_group)
        
        iknode.connect_node_to_metanode( ik_grip, 'ik_grip')
        iknode.connect_node_to_metanode( pv_grip, 'pv_grip')
        iknode.connect_node_to_metanode(pv_line, 'pv_line')
        iknode.connect_node_to_metanode(ik, 'ik_handle')
        iknode.connect_ordered_nodes_to_metanode(ik_chain, 'ik_chain')
        iknode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')#should only be chain_between [:]
                    
        #lock attrs
        miscutil.lock_and_hide_attrs(ik_grip, ['sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(pv_grip, ['rx', 'ry', 'rz','sx', 'sy', 'sz', 'v'])
        
        #make the ik_joints control the base_joints
        map(lambda j: pm.delete(pm.listConnections(j, type='animCurve')), [start_joint, middle_joint, end_joint]) 
        pm.parentConstraint(ik_chain[0], start_joint, w=1, mo=1)#, skipTranslate = ["x", "y", "z"])
        pm.parentConstraint(ik_chain[1], middle_joint, w=1, mo=1)#, skipTranslate = ["x", "y", "z"])
        pm.parentConstraint(ik_chain[2], chain_between[2], w=1, mo=1)#, skipTranslate = ["x", "y", "z"])
        
        orig_ns.setCurrent()

        return iknode
        
    def get_grips(self):
        grips = [self.get_ik_grip(), self.get_pv_grip()]
        return grips
        
    def get_ik_grip(self):
        return rigging.Grip(self.ik_grip.listConnections()[0])
    
    def get_pv_grip(self):
        return rigging.Grip(self.pv_grip.listConnections()[0])
    
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
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_point_component
            self.attach_point_location.set(location)
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_orient_component
            self.attach_orient_location.set(location)
        miscutil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        grip_group = self.get_ctrls_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            self.attach_point_location.set(attach_joint.name())
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            self.attach_orient_location.set(attach_joint.name())
        miscutil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_skeleton(self, namespace = None):
        ik_grip = self.get_ik_grip()
        pv_grip = self.get_pv_grip()
        bind_joints = self.get_bind_joints()
        if namespace is None:
            namespace = nsutil.get_namespace(bind_joints[0])
        bind_joints =  map(lambda x: x.swapNamespace(namespace), bind_joints)
        end_joint = bind_joints[-1]
        mid_joint = bind_joints[1]
        constraints = []
        constraints.append(pm.parentConstraint(end_joint, ik_grip, w=1))
        constraints.append(pm.parentConstraint(mid_joint, pv_grip, w=1, skipRotate = ["x", "y", "z"]))
    
        return [ik_grip, pv_grip], constraints
        
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
        elif location.lower() == 'second_from_last':
            second_from_last = self.get_bind_joints()[-2]
            return second_from_last
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