import pymel.core as pm
import component
import keyablecomponent
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class FKIKComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    # ###needs align methods, switch grip parenting, more testing
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region, ik_flag_orient = None, ik_flag_rotate_order = None, lock_child_rotate_axes=[], lock_child_translate_axes=['tx', 'ty', 'tz'], lock_root_rotate_axes=[], lock_root_translate_axes=['tx', 'ty', 'tz']):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        side_prefix = side.lower()[:1]

        fkiknode = keyablecomponent.KeyableComponent.create(metanode_parent, FKIKComponent.__name__, FKIKComponent.LATEST_VERSION, side, region)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nodetypes.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        if not (len(chain_between) == 3 or len(chain_between) == 4):
            raise StandardError("There can only be 3 joints between start_joint and end_joint inclusively")

        middle_joint = chain_between[1]

        do_not_touch = fkiknode.get_do_not_touch()
        ctrls_group = fkiknode.get_ctrls_group()
        
        #create fk chain
        fk_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        fk_chain_result = rigging.rig_fk_chain(fk_chain[0], fk_chain[-1])
        ctrls = fk_chain_result['grips']
        for x in range(len(ctrls)):
            locked_attrs = ['sx', 'sy', 'sz']
            if x == 0:
                locked_attrs = locked_attrs + lock_root_translate_axes
            elif x > 0:
                locked_attrs = locked_attrs + lock_child_rotate_axes + lock_child_translate_axes

            miscutil.lock_and_hide_attrs(ctrls[x], locked_attrs)
            
        start_grip = pm.PyNode(fk_chain_result['grips'][0])
        rigutil.get_zero_transform(start_grip).setParent(ctrls_group)
        fk_chain[0].setParent(do_not_touch)
        do_not_touch.setParent(metanode_parent.get_do_not_touch_group())
        ctrls_group.setParent(metanode_parent.get_ctrls_group())
            
        #create ik chain
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
        
        #create switch
        switch_location = None
        if len(chain_between) == 3:
            switch_location = chain_between[-1]
        if len(chain_between) == 4:
            switch_location= chain_between[-2]
        
        forward_axis = "-z" if side_prefix == 'l' else "z"
        #switch_shape = rigging.create_poly_shape_switch(size=3, forward_axis=forward_axis)
        switch_grip = rigging.Grip.create(switch_location, '{0}_{1}_fkik_switch'.format(side_prefix, region))
        switch_attr_name = "fkik_switch"
        pm.addAttr(switch_grip, ln=switch_attr_name, k=True, at='double', min=0, max=1, dv=1)
        invert_node = miscutil.invert_attribute("{0}.{1}".format(switch_grip, switch_attr_name))
        pm.rename(invert_node, "{0}_{1}_switch_invert_node".format(side, region))
        pm.pointConstraint(switch_location, switch_grip, w=1, mo=1)
        pm.orientConstraint(switch_location, switch_grip, w=1, mo=1)
        
        switch_grip.setParent(ctrls_group)
        switch_zero_grp = switch_grip.get_zero_transform()
        
        #visibility switching
        invert_node.straight >> ik_grip.v
        invert_node.straight >> pv_grip.v
        for fk_grip in fk_chain_result['grips']:
            invert_node.inverse >> fk_grip.v
            fk_grip.v.lock()
            
        #parenting
        ik_zero_grp = ik_grip.get_zero_transform()
        pv_zero_grp = pv_grip.get_zero_transform()
        ik_chain_start = ik_chain_result['start_joint']
        pm.parent([pv_line, ik_zero_group, ik_chain_start], do_not_touch)
        pm.parent([ik_zero_grp, pv_zero_grp, switch_zero_grp], ctrls_group)
        #pm.parent([ik_grip, pv_grip], ctrls_group)
        
        fkiknode.connect_node_to_metanode( ik_grip, 'ik_grip')
        fkiknode.connect_node_to_metanode( pv_grip, 'pv_grip')
        fkiknode.connect_node_to_metanode(pv_line, 'pv_line')
        fkiknode.connect_node_to_metanode(ik, 'ik_handle')
        fkiknode.connect_ordered_nodes_to_metanode(ik_chain, 'ik_chain')
        fkiknode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')#should only be chain_between [:]
        fkiknode.addAttr("switch_attr_name", dt= "string")
        fkiknode.attr("switch_attr_name").set(switch_attr_name)
        fkiknode.connect_node_to_metanode(switch_grip, 'switch_grip')
        fkiknode.connect_node_to_metanode(invert_node, 'invert_node')
        fkiknode.connect_ordered_nodes_to_metanode(fk_chain_result['grips'], 'fk_grips')
        fkiknode.connect_ordered_nodes_to_metanode(fk_chain, 'fk_chain')

        #lock attrs
        miscutil.lock_and_hide_attrs(ik_grip, ['sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(pv_grip, ['rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(switch_grip, ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'radius', 'v'])
        miscutil.lock_and_hide_attrs(fk_chain_result['grips'][1], ['rx', 'ry']) #fk_forearm
        
        #make the ik_joints and fk joints control the base_joints
        for inc in xrange(len(chain_between[:-1])):
            ik_jnt = ik_chain[inc] 
            fk_jnt = fk_chain[inc]
            orient_const = pm.orientConstraint(fk_jnt, ik_jnt, chain_between[inc], w=1, mo=0)
            point_const = pm.pointConstraint(fk_jnt, ik_jnt, chain_between[inc], w=1, mo=1)
            invert_node.straight >> orient_const.getWeightAliasList()[1] #ik
            invert_node.straight >> point_const.getWeightAliasList()[1] #ik
            invert_node.inverse >> orient_const.getWeightAliasList()[0] #fk
            invert_node.inverse >> point_const.getWeightAliasList()[0] #fk		
        
        orig_ns.setCurrent()

        return fkiknode
        
    def get_grips(self):
        grips = [self.ik_grip.listConnections()[0], self.pv_grip.listConnections()[0], self.switch_grip.listConnections()[0]]
        grips.append(self.fk_grips.listConnections())
        grips = reduce(lambda x, y: (x if type(x) is list else [x]) + (y if type(y) is list else [y]), grips)
        grips = map(lambda x: rigging.Grip(x), grips)
        return grips
        
    def get_ik_grip(self):
        return rigging.Grip(self.ik_grip.listConnections()[0])
    
    def get_pv_grip(self):
        return rigging.Grip(self.pv_grip.listConnections()[0])
    
    def get_fk_grips(self):
        grips = map(lambda x: rigging.Grip(x), self.fk_grips.listConnections())
        return grips
    
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
        attach_component = component.Component(attach_component)
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = self.get_grip_group()
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
        grip_group = self.get_grip_group()
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
        fk_grip = self.get_fk_flags()
        bind_joints = self.get_bind_joints()
        if namespace is None:
            namespace = nsutil.get_namespace(bind_joints[0])
        bind_joints =  map(lambda x: x.swapNamespace(namespace), bind_joints)
        end_joint = bind_joints[2]
        mid_joint = bind_joints[1]
        start_joint = bind_joints[0]
        pv_locator = rigutil.create_locator_at_point(rigutil.find_pv_location(start_joint, mid_joint, end_joint))
        grips = [ik_grip, pv_grip]
        constraints = []
        constraints.append(miscutil.safe_parent_constraint(end_joint, ik_grip, w = 0))
        constraints.append(miscutil.safe_parent_constraint(mid_joint, pv_locator, w = 1, mo = 1))
        constraints.append(pm.parentConstraint(pv_locator, pv_grip, w = 1, mo = 0, skipRotate = ["x", "y", "z"]))
        constraints.append(pv_locator)
    
        for inc in xrange(len(fk_grips)):
            grip = fk_grips[inc]
            jnt = bind_joints[inc]
            const = miscutil.safe_parent_constraint(jnt, grip, 0)
            constraints.append(const)
            grips.append(grip)
            
        return [grips, constraints]
        
    def bake_and_detach(self, objects, constraints):
        '''Bakes grips and detaches from baked skeleton.'''
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

    def get_fkik_state(self):
        switch_attr = self.get_switch_attr()
        return switch_attr.get()

    def get_switch_attr(self):
        grip = self.switch_grip.listConnections()[0]
        attr_name = self.switch_attr_name.get()
        return grip.attr(attr_name)
        
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