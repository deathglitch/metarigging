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
    def create(metanode_parent, start_joint, end_joint, side, region, ik_grip_orient = None, ik_grip_rotate_order = None, lock_child_rotate_axes=[], lock_child_translate_axes=['tx', 'ty', 'tz'], lock_root_rotate_axes=[], lock_root_translate_axes=['tx', 'ty', 'tz']):
        start_joint = pm.PyNode(start_joint)
        end_joint = pm.PyNode(end_joint)
        
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
        fk_chain[0].setParent(do_not_touch)
        fk_chain_result = rigging.rig_fk_chain(fk_chain[0], fk_chain[-1])
        ctrls = fk_chain_result['grips']
        for x in range(len(ctrls)):
            locked_attrs = ['sx', 'sy', 'sz']
            if x == 0:
                locked_attrs = locked_attrs + lock_root_translate_axes
            elif x > 0:
                locked_attrs = locked_attrs + lock_child_rotate_axes + lock_child_translate_axes

            miscutil.lock_and_hide_attrs(ctrls[x], locked_attrs)
            ctrls[x].v.set(keyable = False, channelBox = False)
            
        fk_grips = fk_chain_result['grips']
        start_grip = fk_chain_result['grips'][0]
        start_grip.setParent(ctrls_group)
        #do_not_touch.setParent(fkiknode.get_do_not_touch())
        #ctrls_group.setParent(fkiknode.get_ctrls_group())
        #create ik chain
        ik_chain = rigging.create_duplicate_chain(start_joint, end_joint, 'ik')
        ik_chain[0].setParent(do_not_touch)
        ik_chain_result = rigging.rig_ik_rp_chain(ik_chain[0], ik_chain[-1], switch = True, ik_grip_orient = ik_grip_orient, ik_grip_rotate_order = ik_grip_rotate_order, region = region)
       
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
        switch_grip = rigging.Grip.create(switch_location, name_root = '{0}_{1}_fkik_switch'.format(side_prefix, region))
        switch_attr_name = "fkik_switch"
        pm.addAttr(switch_grip, ln=switch_attr_name, k=True, at='double', min=0, max=1, dv=1)
        invert_node = miscutil.invert_attribute("{0}.{1}".format(switch_grip, switch_attr_name))
        pm.rename(invert_node, "{0}_{1}_switch_invert_node".format(side, region))
        pm.pointConstraint(switch_location, switch_grip, w=1, mo=1)
        pm.orientConstraint(switch_location, switch_grip, w=1, mo=1)
        
        #switch_grip.setParent(ctrls_group)
        
        #visibility switching
        invert_node.straight >> ik_grip.v
        invert_node.straight >> pv_grip.v
        for fk_grip in fk_chain_result['grips']:
            invert_node.inverse >> fk_grip.v
            fk_grip.v.lock()
            
        #parenting
        ik_zero_grp = ik_grip.get_zero_transform()
        pv_zero_grp = pv_grip.get_zero_transform()
        switch_zero_grp = switch_grip.get_zero_transform()
        ik_chain_start = ik_chain_result['start_joint']
        pm.parent([pv_line, ik_zero_group], do_not_touch)
        pm.parent([ik_zero_grp, pv_zero_grp, switch_zero_grp], ctrls_group)
        #pm.parent([ik_grip, pv_grip], ctrls_group)

        fk_chain[0].v.set(0)
        ik_chain[0].v.set(0)
        do_not_touch.v.unlock()
        do_not_touch.v.set(1)
        do_not_touch.v.lock()

        #lock attrs
        miscutil.lock_and_hide_attrs(ik_grip, ['sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(pv_grip, ['rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(switch_grip, ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'radius', 'v'])
        miscutil.lock_and_hide_attrs(fk_chain_result['grips'][1], ['rx', 'ry']) #fk_forearm
                
        fkiknode.connect_ordered_nodes_to_metanode(ik_chain, 'ik_chain')
        fkiknode.setAttr('ik_grip_orient', '{0}, {1}'.format(ik_grip_orient[0], ik_grip_orient[1]) if ik_grip_orient else '', f=1)
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
        #fkiknode.connect_ordered_nodes_to_metanode(start_joint, 'start_joint')
        #fkiknode.connect_ordered_nodes_to_metanode(end_joint, 'end_joint')
        fkiknode.connect_ordered_nodes_to_metanode(fk_grips, 'fk_grips')
        fkiknode.connect_ordered_nodes_to_metanode(fk_chain, 'fk_chain')

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
        #attach_component = component.Component(attach_component)
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = rigutil.get_zero_transform(self.fk_grips.listConnections()[0])
        dnt_group = self.get_do_not_touch()
        attrs = dnt_group.translate.children() + dnt_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            dnt_cons = dnt_group.tx.listConnections()
            if dnt_cons and isinstance(dnt_cons[0], pm.nt.ParentConstraint):
                pm.delete(dnt_cons[0])
            grip_cons = grip_group.tx.listConnections()
            if grip_cons and isinstance(grip_cons[0], pm.nt.ParentConstraint):
                pm.delete(grip_cons[0])
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            pm.parentConstraint(parent_node, dnt_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_point_component
            self.attach_point_location.set(location)
        if orient:
            #delete old constraints
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
        miscutil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        grip_group = rigging.get_zero_transform(self.fk_grips.listConnections()[0])
        dnt_group = self.get_do_not_touch()
        attrs = dnt_group.translate.children() + dnt_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
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
            
    def align_switch_bake(self, state = -1, delete_sc = True):
        '''
        switches component from one state to another and keys all the keys in timeline to match
        state: can be used to force component to one state 
        -1= toggle, 0 = force to FK, 1 = force to IK
        '''
        ik_grip = self.get_ik_grip()
        pv_grip = self.get_pv_grip()
        fk_grips = self.get_fk_grips()
        switch_grip = self.get_switch_grip()
        switch_attr = self.get_switch_attr()
        fkik_state = switch_attr.get()

        current_time = pm.currentTime()
        min = pm.playbackOptions(q=True, min=True)
        max = pm.playbackOptions(q=True, max=True)
        pm.setKeyframe(switch_grip)
        misc.bake(switch_grip, pok = 1, sample_by = 1, euler_filter = None, preserve_infinities = None, smart = False, delete_sc = False, attrs = [switch_attr.longName()])#bake down switch, doubles check that switch is switching if needed.
        try:
            for time in xrange(int((max+1) - min)):
                time = time + min
                pm.currentTime(time)
                #self.align_switch(state = 1-fkik_state)
                self.align_switch(state)
                if fkik_state:
                    pm.setKeyframe([switch_grip] + fk_grips)
                else:
                    pm.setKeyframe([switch_grip, ik_grip, pv_grip])
        except:
            pass
        
        if delete_sc:
            pm.delete(self.get_grips(), sc=True)
            
        pm.currentTime(current_time)
        
    def align_switch(self, state = -1):
        '''
        switches component from one state to another
        state: can be used to force component to one state 
        -1= toggle, 0 = force to FK, 1 = force to IK
        '''
        #get needed variables
        ik_grip = self.get_ik_grip()
        pv_grip = self.get_pv_grip()
        fk_grips = self.get_fk_grips()
        bind_joints = self.get_bind_joints()
        switch_grip = self.get_switch_grip()
        switch_attr = self.get_switch_attr()
        current_state = round(switch_attr.get())

        if not current_state == state: #if current_state == state, do nothing, already correct
            if current_state >= 0.5:#is ik, must turn to fk
                #match fk to ik
                for bind_joint, fk_grip in map(None, bind_joints, fk_grips):
                    miscutil.align(bind_joint, fk_grip, orient = True, point = False)
                #switch_attr
                switch_attr.set(0)
                pm.select(fk_grips[2])
                    
            else: #current_state < 0.5, is fk, must turn to ik
                #match ik to fk
                #match pv
                pv_location = rigutil.find_pv_location(fk_grips[0], fk_grips[1], fk_grips[2])
                pv_locator = rigutil.create_locator_at_point(pv_location)
                miscutil.align(pv_locator, pv_grip, point = True, orient = False)
                pm.delete(pv_locator)
                #match ik 
                miscutil.align(bind_joints[2], ik_grip)
                #switch_attr
                switch_attr.set(1)
                pm.select(ik_grip)
                
    def remove(self, bake = False):
        '''remove everything about this rig implementation'''
        if bake:
            self.bake_to_skeleton()
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch()
        pm.delete([self, dnt_group, grip_group])
        return