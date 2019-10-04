import pymel.core as pm
import component
import keyablecomponent
import metautil
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class QuadrupedLegComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region, heel_chain_name='heel_contact', ball_chain_name='ball_contact', toe_chain_name='toe_contact', ball_lift_axis='x', toe_lift_axis='x', toe_pivot_axis='y', heel_lift_axis='x', foot_lean_axis='z', ball_pivot_axis='z'):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        side_prefix = side[:1].lower()
        name_root = side[:1].lower() + region + '_reverse_foot'
        
        joint_chain = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nt.Joint))

        hip_joint = start_joint
        toe_contact_joint = end_joint
        calf_joint = joint_chain[1]
        foot_joint = joint_chain[2]
        toe_joint = joint_chain[3]

        heel_contact_joint = [pm.PyNode(new_ns + ':b_' + side[:1].lower() + '_' + heel_chain_name)]
        ball_contact_joint = [pm.PyNode(new_ns + ':b_' + side[:1].lower() + '_' + ball_chain_name)]
        toe_contact_joint = [pm.PyNode(new_ns + ':b_' + side[:1].lower() + '_' + toe_chain_name)]

        quadrupedlegnode = keyablecomponent.KeyableComponent.create(metanode_parent, QuadrupedLegComponent.__name__, QuadrupedLegComponent.LATEST_VERSION, side, region, component_pivot = hip_joint)
        chain_between = joint_chain + heel_contact_joint + ball_contact_joint + toe_contact_joint
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        
        do_not_touch = quadrupedlegnode.get_do_not_touch()
        ctrls_group = quadrupedlegnode.get_ctrls_group()
        
        ik_leg_chain = rigging.create_duplicate_chain(hip_joint, toe_contact_joint, "ik")
        ik_thigh = ik_leg_chain[0]#thigh_dupe
        ik_calf =  ik_leg_chain[1] #calf_dupe
        ik_foot = ik_leg_chain[2] #foot_dupe
        ik_foot_toe = ik_leg_chain[3] #toe_dupe
        ik_foot_ball = ik_leg_chain[4] #toe_contact_null_dupe
        ik_leg_chain[0].setParent(do_not_touch)
        if len(pm.listRelatives(hip_joint, pa=True, p=True, type=pm.nt.Joint)):
            pm.parentConstraint(pm.listRelatives(hip_joint, pa=True, p=True, type=pm.nt.Joint), ik_leg_chain[0], mo=1)
        
        pv_point = rigutil.find_pv_location(ik_thigh, ik_calf, ik_foot)
        pv_locator = rigutil.create_locator_at_point(pv_point) #find pv point before ik, in case joints move
    
        ik, eff = pm.ikHandle( sol = 'ikRPsolver', sj = ik_thigh, ee = ik_foot, n='f_{0}_{1}_ikhandle'.format(side_prefix, region))
        ik.visibility.set(0)
        #ik_parent_zero = metautil.add_zero_transform(ik)
        
        #create reverse foot hierarchy
        pm.select(toe_joint, r=True)
        reverse_ankle = pm.PyNode(pm.joint(n=name_root+'_ankle'))
        pm.parent(reverse_ankle, do_not_touch)
        reverse_ankle.visibility.set(False)

        pm.select(heel_contact_joint, r=True)
        reverse_heel_contact = pm.PyNode(pm.joint(n=name_root+'_heel_contact'))
        pm.parent(reverse_heel_contact, reverse_ankle)
        
        pm.select(toe_contact_joint, r=True)
        reverse_toe_contact = pm.PyNode(pm.joint(n=name_root+'_toe_contact'))
        pm.parent(reverse_toe_contact, reverse_heel_contact)
        
        pm.select(ball_contact_joint, r=True)
        reverse_ball_contact = pm.PyNode(pm.joint(n=name_root+'_ball_contact'))
        pm.parent(reverse_ball_contact, reverse_toe_contact)

        pm.select(toe_joint, r=True)
        reverse_ankle_end = pm.PyNode(pm.joint(n=name_root+'_ankle_end'))
        pm.parent(reverse_ankle_end, reverse_ball_contact)
        
        #create ik grips
        #foot_align_loc = pm.spaceLocator()
        #foot_align_loc.rotateOrder.set(ik_foot.rotateOrder.get())
        #miscutil.align(ik_foot, foot_align_loc, point = True, orient = False)
        #foot_ik_grip = rigging.Grip.create(foot_align_loc, name_root='{0}_{1}'.format(side.lower()[:1], region))
        #pm.delete(foot_align_loc)
        #miscutil.align(foot_joint, foot_ik_grip) 
        foot_ik_grip = rigging.Grip.create(toe_joint, name_root='{0}_{1}'.format(side.lower()[:1], region))
        miscutil.align(toe_joint, foot_ik_grip)
        foot_ik_pivot_grip = rigging.Grip.create(foot_joint, name_root='{0}_{1}_pivot'.format(side.lower()[:1], region))
        miscutil.align(toe_joint, foot_ik_pivot_grip.get_zero_transform())
        pm.pointConstraint(reverse_ankle_end, foot_ik_pivot_grip.get_zero_transform())
        
        leg_length = (miscutil.distance_between(hip_joint, foot_joint)/50)
        #pv_shape = shapeutil.create_poly_box(size = limb_length) # TODO: create a better shape for this by default
        pv_grip = rigging.Grip.create(pv_locator, name_root='{0}_{1}_pv'.format(side_prefix, region))
        # reference line
        pv_line = rigutil.create_line_between(ik_calf, pv_grip)
        #pv_line.inheritsTransform.set(0)
        
        #constraints
        pv_constraint = pm.poleVectorConstraint(pv_grip, ik, w=1)
        pm.delete(pv_locator)
        #if 4 joint chain last joint rotation moves with ik grip
        if len(ik_leg_chain) == 4:
            pm.orientConstraint(foot_ik_grip, ik_foot, w=1, mo=True)
            
        #ik grip
        jo = foot_ik_grip.getAttr('jointOrient')
        foot_ik_grip.rotate.set(foot_ik_grip.rotate.get() + jo)
        foot_ik_grip.jointOrient.set([0,0,0])
        foot_ik_grip.addAttr('ik_twist', keyable=True, at='double')
        foot_ik_grip.ik_twist >> ik.twist
        rigutil.inherit_fbik_attrs(foot_joint, foot_ik_grip)
        '''
        #create reverse foot hierarchy
        pm.select(heel_contact_joint, r=True)
        reverse_heel_contact = pm.joint(n=name_root+'_heel_contact')
        pm.parent(reverse_heel_contact, do_not_touch)
        
        pm.select(toe_contact_joint, r=True)
        reverse_toe_contact = pm.joint(n=name_root+'_toe_contact')
        pm.parent(reverse_toe_contact, reverse_heel_contact)
        
        pm.select(toe_joint, r=True)
        reverse_toe = pm.joint(n=name_root+'_toe')
        pm.parent(reverse_toe, reverse_toe_contact)
        
        pm.select(toe_joint, r=True)
        reverse_ball_contact = pm.joint(n=name_root+'_ball_contact')
        pm.parent(reverse_ball_contact, reverse_toe_contact)
        
        reverse_toe_wiggle = pm.joint(n=name_root+'_toe_wiggle')
        pm.joint(reverse_heel_contact, edit=True, setPreferredAngles=True, children=True) #heel_contact
        pm.joint(reverse_toe_contact, edit=True, setPreferredAngles=True, children=True) #toe_contact
        pm.joint(reverse_toe, edit=True, setPreferredAngles=True, children=True) #toe
        pm.joint(reverse_toe_wiggle, edit=True, setPreferredAngles=True, children=True) #wiggle
        '''
        pv_grip_zero = pv_grip.get_zero_transform()
        pv_grip.visibility >> pv_line.visibility
        pv_grip.overrideVisibility >> pv_grip.overrideVisibility
        pv_grip.overrideEnabled >> pv_line.overrideEnabled
        rigutil.inherit_fbik_attrs(calf_joint, pv_grip)
        
        #connect the reverse hierarchy to the ik skeleton using ik handles
        toe_ik, toe_eff = pm.ikHandle(sol = 'ikRPsolver', sj= ik_foot, ee=ik_foot_toe, n='{0}_{1}_toe_ikhandle'.format(side_prefix, region))
        #toe_contact_ik, toe_contact_eff = pm.ikHandle(sj= ik_foot_toe, ee=ik_foot_toe_contact, n='{0}_{1}_toe_contact_ikhandle'.format(side_prefix, region))
        toe_ik_point_zero = metautil.add_zero_transform(toe_ik)
        toe_ik.visibility.set(False)
        
        toe_ik_pv_locator = metautil.create_locator_at_object(foot_ik_pivot_grip)
        toe_ik_pv_locator.rename(toe_ik.shortName() + '_pv')
        toe_ik_pv_locator.setParent(foot_ik_pivot_grip)
        toe_ik_pv_locator.translateZ.set(10)
        toe_ik_pv_locator.visibility.set(False)
        metautil.lock_and_hide_attrs(toe_ik_pv_locator, ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", "v"])
        pm.poleVectorConstraint(toe_ik_pv_locator, toe_ik, w=1)
        
        ball_ik, ball_eff = pm.ikHandle(sol = 'ikRPsolver', sj = ik_foot_toe, ee = ik_foot_ball, n = '{0}_{1}_ball_ikhandle'.format(side_prefix, region))
        ball_ik_zero = metautil.add_zero_transform(ball_ik)
        ball_ik.visibility.set(False)
        pm.parent([ball_ik_zero], reverse_ball_contact)
        
        miscutil.safe_point_constraint(reverse_ankle_end, toe_ik_point_zero, mo=1)
        miscutil.safe_parent_constraint(foot_ik_pivot_grip, ik_parent_zero, skipRotate = ['x', 'y', 'z'], mo=1)
        miscutil.safe_parent_constraint(foot_ik_grip, reverse_ankle, mo=1)
        '''
        #reverse foot parenting
        pm.parent(ik, reverse_toe)
        pm.parent(toe_ik, reverse_toe)
        pm.parent(toe_contact_ik, reverse_toe_wiggle)
        reverse_foot_grp = pm.group(empty = 1, n = "{0}_{1}_reverse_group".format(side_prefix, region))
        miscutil.align(reverse_heel_contact,reverse_foot_grp)
        pm.parent(reverse_heel_contact, reverse_foot_grp)
        pm.parent(reverse_foot_grp, do_not_touch)
        pm.parentConstraint(foot_ik_grip, reverse_foot_grp, w=1, mo=1)
    
        #create ik toe grip
        toe_ik_name = '{0}_{1}_toe_ik'.format(side_prefix, region)
        if region == 'leg':
            toe_ik_name = '{0}_toe_ik'.format(side_prefix)
            
        ik_toe_grip = rigging.Grip.create(reverse_toe_wiggle, name_root = toe_ik_name)
        rigutil.inherit_fbik_attrs(toe_joint, ik_toe_grip)
        ik_toe_grip_zero = ik_toe_grip.get_zero_transform()
        ik_toe_grip_zero.setParent(foot_ik_grip)
        '''
        #create fk leg chain
        fk_leg_chain = rigging.create_duplicate_chain(hip_joint, toe_contact_joint, "fk") #thigh_new, calf_new, foot_new, toe_new, toe_contact_null_new
        fk_thigh = fk_leg_chain[0]#thigh_new
        fk_calf =  fk_leg_chain[1] #calf_new
        fk_foot = fk_leg_chain[2] #foot_new
        fk_foot_toe = fk_leg_chain[3] #toe_new
        fk_foot_toe_contact = fk_leg_chain[4] #toe_contact_null_new
        fk_leg_chain[0].setParent(do_not_touch)

        #create fkik switch
        switch_location = toe_joint
        forward_axis = "-x" if side_prefix == 'l' else "x"
        #switch_shape = shapeutil.create_poly_shape_switch(size=4, forward_axis=forward_axis) # TODO: create a switch shape
        switch_grip = rigging.Grip.create(switch_location, name_root='{0}_{1}_fkik_switch'.format(side_prefix, region))
        switch_attr_name = "fkik_switch"
        pm.addAttr(switch_grip, ln=switch_attr_name, k=True, at='double', min=0, max=1, dv=1)
        invert_node = miscutil.invert_attribute("{0}.{1}".format(switch_grip, switch_attr_name))
        pm.rename(invert_node, "{0}_{1}_switch_invert_node".format(side, region))
        pm.pointConstraint(switch_location, switch_grip, w=1, mo=True)
        pm.orientConstraint(switch_location, switch_grip, w=1, mo=True)
        switch_grip.lock_and_hide_attrs(["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", 'radius', 'v'])

        #visibility switching
        invert_node.straight >> foot_ik_grip.v
        invert_node.straight >> foot_ik_pivot_grip.v
        invert_node.straight >> pv_grip.v


        #constrain joint chain to fk and ik chains
        fk_grips = []
        point_consts = []
        last = None
        for inc, node in enumerate(fk_leg_chain[:-1]):
            label = miscutil.get_name_root(node).replace("_new", "").replace("_fk", "")[2:]
            orig_rot = node.rotate.get()
            node.rotate.set([0,0,0])#rotate joint to zero to create correct grip zero position
            fk_leg = rigging.Grip.create(node, name_root=label)
            node.rotate.set(orig_rot)
            miscutil.align(node, fk_leg, orient = True, point = False)#rotate grip and joint back to orig position
            point_const = pm.pointConstraint(fk_leg, node, w=1, mo=True)
            if last:
                fk_leg.setParent(last)
            last = fk_leg
            point_consts.append(point_const)
            
            invert_node.inverse >> fk_leg.visibility
            fk_leg.v.lock()
                        
            metautil.inherit_fbik_attrs(joint_chain[inc], fk_leg)
            orient_const = pm.orientConstraint(ik_leg_chain[inc], fk_leg, joint_chain[inc], w=1, mo=False)
            weight_alias_list = pm.orientConstraint(orient_const, q=True, wal=True)
            pm.connectAttr("{0}.straight".format(invert_node), weight_alias_list[0], force=True)
            pm.connectAttr("{0}.inverse".format(invert_node), weight_alias_list[1], force=True)
            
            point_const = pm.pointConstraint(ik_leg_chain[inc], fk_leg, joint_chain[inc], w=1, mo=False)
            weight_alias_list = pm.pointConstraint(point_const, q=True, wal=True)
            pm.connectAttr("{0}.straight".format(invert_node), weight_alias_list[0], force=True)
            pm.connectAttr("{0}.inverse".format(invert_node), weight_alias_list[1], force=True)
            
            fk_grips.append(fk_leg)
                
        for fk_grip in fk_grips:
            miscutil.lock_and_hide_attrs(fk_grip, ['tx', 'ty', 'tz','sx', 'sy', 'sz'])
            fk_grip.v.set(keyable = False, channelBox = False)
        miscutil.lock_and_hide_attrs(fk_grips[1], ['rx', 'ry']) #fk_calf

        pm.orientConstraint(foot_ik_grip, ik_foot_toe, mo=1)

        #parenting
        fk_grips[0].setParent(ctrls_group)
        ik_zero_grp = foot_ik_grip.get_zero_transform()
        pv_zero_grp = pv_grip.get_zero_transform()
        switch_zero_grp = switch_grip.get_zero_transform()
        pm.parent([pv_line], do_not_touch)
        pm.parent([ik_zero_grp, ik_pivot_zero_grp, pv_zero_grp, switch_zero_grp, toe_ik_point_zero, ik_parent_zero], ctrls_group)

        #add the reverse foot control attributes
        foot_ik_grip.addAttr('ball_lift', k=True, at='double')
        foot_ik_grip.addAttr('toe_lift', k=True, at='double')
        foot_ik_grip.addAttr('toe_pivot', k=True, at='double')
        foot_ik_grip.addAttr('heel_lift', k=True, at='double')
        foot_ik_grip.addAttr('foot_lean', k=True, at='double')
        
        foot_ik_grip.ball_lift >> reverse_toe.attr('rotate'+ ball_lift_axis.upper()) #original was Z
        foot_ik_grip.toe_lift >> reverse_toe_contact.attr('rotate'+ toe_lift_axis.upper()) #original was Z
        foot_ik_grip.toe_pivot >> reverse_toe_contact.attr('rotate'+ toe_pivot_axis.upper()) #original was Z
        foot_ik_grip.heel_lift >> reverse_heel_contact.attr('rotate'+ heel_lift_axis.upper()) #original was z
        foot_ik_grip.foot_lean >> reverse_heel_contact.attr('rotate'+ foot_lean_axis.upper()) #original was x
        for reverse_foot_obj in [reverse_ankle, reverse_heel_contact, reverse_toe_contact, reverse_ball_contact, reverse_ankle_end]:
            miscutil.lock_and_hide_attrs(reverse_foot_obj, ["tx", "ty", "tz", "rx", "ry", "rz", "sx", "sy", "sz", "v"])
        
        #xnode connections
        quadrupedlegnode.connect_node_to_metanode(ik, 'ik_leg_handle')
        quadrupedlegnode.connect_node_to_metanode(pv_grip, 'pv_grip')
        quadrupedlegnode.connect_node_to_metanode(pv_line, 'pv_line')
        quadrupedlegnode.connect_node_to_metanode(switch_grip, 'switch_grip')
        quadrupedlegnode.addAttr("switch_attr_name", dt= "string")
        quadrupedlegnode.attr("switch_attr_name").set(switch_attr_name)
        quadrupedlegnode.connect_node_to_metanode(foot_ik_grip, 'ik_grip')
        quadrupedlegnode.connect_node_to_metanode(foot_ik_pivot_grip, 'ik_pivot_grip')
        quadrupedlegnode.connect_ordered_nodes_to_metanode(fk_grips, 'fk_grips')
        quadrupedlegnode.connect_node_to_metanode(fk_foot_toe, 'fk_toe_grip')
        quadrupedlegnode.connect_ordered_nodes_to_metanode(fk_leg_chain, 'fk_chain')
        quadrupedlegnode.connect_ordered_nodes_to_metanode(ik_leg_chain, 'ik_chain')
        quadrupedlegnode.connect_ordered_nodes_to_metanode(joint_chain[:-1], 'bind_joints')
        
        #visibility setting, allows pvLine to be seen
        fk_leg_chain[0].v.set(0)
        ik_leg_chain[0].v.set(0)
        do_not_touch.v.unlock()
        do_not_touch.v.set(1)
        do_not_touch.v.lock()
        
        #lock and hide unused attrs
        #miscutil.lock_all_keyable_attrs(ik)
        
        miscutil.lock_and_hide_attrs(foot_ik_grip, ['sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(foot_ik_pivot_grip, ['tx', 'ty', 'tz', 'sx', 'sy', 'sz', 'v'])
        miscutil.lock_and_hide_attrs(pv_grip, ['rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v'])
        for fk_leg_part in fk_leg_chain:
            miscutil.lock_and_hide_attrs(fk_leg_part, ['tx', 'ty', 'tz','sx', 'sy', 'sz', 'v'])

        orig_ns.setCurrent()
        
        return quadrupedlegnode
        
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
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = metautil.get_zero_transform(self.fk_grips.listConnections()[0])
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
        toe_grip = self.get_ik_toe_grip()
        fk_grip = self.get_fk_grips()
        bind_joints = self.get_bind_joints()
        
        base_middle_joint = bind_joints[1]
        base_ankle_joint = bind_joints[2]
        base_toe_joint = bind_joints[3]
        
        if namespace is None:
            namespace = nsutil.get_namespace(bind_joints[0])
        bind_joints =  map(lambda x: x.swapNamespace(namespace), bind_joints)
        toe_joint = bind_joints[3]
        ankle_joint = bind_joints[2]
        mid_joint = bind_joints[1]
        start_joint = bind_joints[0]
        pv_locator = rigutil.create_locator_at_point(rigutil.find_pv_location(start_joint, mid_joint, ankle_joint))
        grips = [ik_grip, pv_grip, toe_grip]
        constraints = []
        # Constrain the foot and ik first, order of operations is important
        constraints.append(pm.parentConstraint(toe_joint, ik_grip, w=1, mo=False))
        constraints.append(pm.parentConstraint(middle_joint, pv_locator, mo=True))
        constraints.append(pm.pointConstraint(pv_locator, pv_grip, w=1, mo=False))

        # Locators are used to capture offsets between the grip and the joints and for up vectors for aim constraints
        aim_transfer_locator = miscutil.create_locator_at_object(base_toe_joint)
        pivot_locator = miscutil.create_locator_at_object(ik_pivot_grip)
        temp_const = pm.aimConstraint(base_ankle_joint, aim_transfer_locator, w=1, aimVector=[0,1,0], upVector=[0,0,-1], worldUpType="objectRotation", worldUpObject=base_ankle_joint, worldUpVector=[0,0,-1], mo=False)
        pm.delete([temp_const])

        # Constrain the pivot grip to the pivot locator that is offset from the aim locator.
        constraints.append(pm.parentConstraint(aim_transfer_locator, pivot_locator, w=1, mo=True))
        constraints.append(pm.pointConstraint(toe_joint, aim_transfer_locator, w=1, mo=False))
        constraints.append(pm.aimConstraint(ankle_joint, aim_transfer_locator, w=1, aimVector=[0,1,0], upVector=[0,0,-1], worldUpType="objectRotation", worldUpObject=ankle_joint, worldUpVector=[0,0,-1], mo=False))
        constraints.append(pm.orientConstraint(pivot_locator, ik_pivot_grip, w=1, mo=False))
        constraints.append(pv_locator)
        constraints.append(aim_transfer_locator)
        constraints.append(pivot_locator)
    
        for grip, jnt in zip(fk_grips, bind_joints):
                const  = miscutil.safe_orient_constraint(jnt, grip, 0)
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
        return rigging.attr(attr_name)

    def get_ik_grip(self):
        return rigging.Grip(self.ik_grip.listConnections()[0])
        
    def get_ik_pivot_grip(self):
        return rigging.Grip(self.ik_pivot_grip.listConnections()[0])

    def get_switch_grip(self):
        return rigging.Grip(self.switch_grip.listConnections()[0])
            
    def get_fk_toe_grip(self):
        return rigging.Grip(self.fk_grips.listConnections()[3])
    
    def get_fk_grips(self):
        grips = map(lambda x: rigging.Grip(x), self.fk_grips.listConnections())
        return grips
    
    def get_pv_grip(self):
        return rigging.Grip(self.pv_grip.listConnections()[0])
        
    def get_fk_chain(self):
        return self.fk_chain.listConnections()
        
    def get_ik_chain(self):
        return self.ik_chain.listConnections()
        
    def get_grips(self):
        grips = [self.ik_pivot_grip.listConnections()[0], self.pv_grip.listConnections()[0], self.switch_grip.listConnections()[0], self.ik_grip.listConnections()[0] ]
        grips += self.fk_grips.listConnections()
        grips = reduce(lambda x, y: (x if type(x) is list else [x]) + (y if type(y) is list else [y]), grips)
        grips = map(lambda x: rigging.Grip(x), grips)
        return grips
        
    def _find_attach_point(self, location):
        if location.lower() == 'start':
            return self.get_bind_joints()[0]
        elif location.lower() == 'mid' or location.lower() == 'middle':
            bind_joints = self.get_bind_joints()
            return bind_joints[1]
        elif location.lower() == 'end':
            return self.get_bind_joints()[-1]
        elif location.lower() == 'foot':
            return self.get_bind_joints()[-2]
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
        ik_toe_grip = self.get_ik_toe_grip()
        fk_grips = self.get_fk_grips()
        switch_grip = self.get_switch_grip()
        switch_attr = self.get_switch_attr()
        fkik_state = switch_attr.get()
        
        current_time = pm.currentTime()
        min = pm.playbackOptions(q=True, min=True)
        max = pm.playbackOptions(q=True, max=True)
        pm.setKeyframe(switch_grip)
        miscutil.bake(switch_grip, pok = True, smart = False, delete_sc = False)
        try:
            for time in xrange(int((max+1) - min)):
                time = time + min
                pm.currentTime(time)
                #self.align_switch(state = 1-fkik_state)
                self.align_switch(state)
                if fkik_state:
                    pm.setKeyframe([switch_grip] + fk_grips)
                else:
                    pm.setKeyframe([switch_grip, ik_grip, pv_grip, ik_toe_grip])
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
        ik_toe_grip = self.get_ik_toe_grip()
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
                pv_locator = miscutil.create_locator_at_point(pv_location)
                miscutil.align(pv_locator, pv_grip, point = True, orient = False)
                pm.delete(pv_locator)
                #match ik 
                miscutil.reset_attrs(ik_grip)
                miscutil.align(bind_joints[2], ik_grip)
                #match ik toe
                miscutil.align(bind_joints[3], ik_toe_grip, point = False, orient = True)
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