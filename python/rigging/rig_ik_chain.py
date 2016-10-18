import pymel.core as pm
import grip
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import metautil.shapeutil as shapeutil

def rig_ik_rp_chain(start_joint, end_joint, switch=False, ik_grip_orient = None, ik_grip_rotate_order = None, region = None):
    '''
    turns the chain given into an ik chain with rotation plane solver
    
    ik_grip_orient = puts the ik_anim parallel to world space
                     takes list, first is str representing axis to match world X axis
                     second takes str representing axis to match world Y axis
                     ex. ["x", "y"] puts in world space, ["-x", "-z"] -x matches world x, -z matches world Y
                     if None, keeps ik at bind position
    ik_grip_rotate_order = sets rotate order to specified string, 'xyz', 'xzy', 'yxz', 'yzx', 'zxy', 'zyx', or None
                        if None, keeps same rotateOrder as the control joint
    return: a dictionary with following keys
        chain
        start_joint
        end_joint
        ik_handle
        ik_effector
        ik_grip
        pv_grip
        pv_constraint
        ik_constraint
        pv_line		
    '''
    return_dictionary = {}
    
    if not pm.objExists(start_joint):
        raise pm.MayaNodeError("start_joint given, {0} , doesn't exist".format(start_joint))
    if not pm.objExists(end_joint):
        raise pm.MayaNodeError("end_joint given, {0} , doesn't exist".format(end_joint))
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    
    chain = miscutil.get_nodes_between(start_joint, end_joint, lambda x: isinstance(x, pm.nodetypes.Joint))
    if not (len(chain) == 3 or len(chain) == 4):
        raise StandardError("There can only be 3 or 4 joints between start_joint and end_joint inclusively")
    middle_joint = chain[1]
    if len(chain) == 4:
        end_joint = chain[2]
    pv_point = rigutil.find_pv_location(start_joint, middle_joint, end_joint)
    pv_locator = rigutil.create_locator_at_point(pv_point) #find pv point before ik, in case joints move
    if not region:
        region = start_joint.getAttr('type')
        region = str(region).strip().lower()
        if region == '2': region = 'leg'
        if region == '10': region = 'arm'
    side = start_joint.getAttr('side')
    side = str(side).strip().lower()
    if side == '0': side = 'c'
    if side == '1': side = 'l'
    if side == '2': side = 'r'
    ik, eff = pm.ikHandle( sol = 'ikRPsolver', sj = start_joint, ee = end_joint)
    ik.rename('{0}_{1}_ikhandle'.format(side, region))
    ik.visibility.set(0)
    # create grips
    ik_grip = grip.Grip.create(end_joint, name_root = '{0}_{1}'.format(side, region))
    #miscutil.align_point_orient(ik_grip, end_joint) #ik_grip is created and aligned to ik by default; this aligns it to the end_joint proper
    #pm.makeIdentity(ik_grip, apply=True, t=1, r=1, s=0, n=0)
    limb_length = (miscutil.distance_between(start_joint, end_joint) / 50)
    #pv_shape = shapeutil.create_poly_box(size = limb_length) # TODO: create a better shape for this by default
    pv_grip = grip.Grip.create(pv_locator, name_root = '{0}_{1}_pv'.format(side, region))
    #miscutil.align_point_orient(pv_grip, pv_locator)
    #pm.makeIdentity(pv_grip, apply=True, t=1, r=1, s=0, n=0)
    # reference line
    pv_line = rigutil.create_line_between(middle_joint, pv_grip)
    pv_line.inheritsTransform.set(0)
    # zero group
    ik_zero_group = pm.group(name = ik.shortName() + "_zero_transform", em = True)
    miscutil.align(ik, ik_zero_group)
    ik.setParent(ik_zero_group)
    # constraints
    pv_constraint = pm.poleVectorConstraint(pv_grip, ik, w = 1)
    ik_constraint = pm.parentConstraint(ik_grip, ik_zero_group, w = 1, mo = 1)
    pm.delete(pv_locator)
    #orient ik_anim to world position parallel if needed
    if ik_grip_orient:
        #get matching vectors
        vectors = {"x": pm.datatypes.Vector([1, 0, 0]), "y":pm.datatypes.Vector([0, 1, 0]), "z": pm.datatypes.Vector([0, 0, 1])}
        x_match = ik_grip_orient[0].lower()
        y_match = ik_grip_orient[1].lower()
        x_match_vector = None
        y_match_vector = None
        for key, value in vectors.items():
            if key in x_match:
                x_match_vector = value
            if key in y_match:
                y_match_vector = value
        if "-" in x_match:
            x_match_vector = -x_match_vector
        if "-" in y_match:
            y_match_vector = -y_match_vector
        #put locator in correct orientation
        matching_loc = pm.spaceLocator()
        aiming_loc = pm.spaceLocator()#locator matching will aim at
        aiming_loc.translate.set([1, 0, 0])
        pm.aimConstraint(aiming_loc, matching_loc, offset = [0, 0, 0], w = 1, aimVector = x_match_vector, upVector = y_match_vector, worldUpType = "scene")
        #align the zero group then the ik_grip
        zero_transform = ik_grip.get_zero_transform() 
        old_pos_loc = bngutil.create_locator_at_object(end_joint)
        bngutil.align(matching_loc, zero_transform, point = False, orient = True)
        bngutil.align(matching_loc, ik_grip, point = False, orient = True)
        pm.makeIdentity(ik_grip, apply=False, t = True, r = True, s = False, n = False)
        bngutil.align(old_pos_loc, ik_grip, point = False, orient =True)
        pm.delete([matching_loc, aiming_loc, old_pos_loc])
    rotate_order_dict = {'xyz':0,'yzx':1,'zxy':2,'xzy':3,'yxz':4,'zyx':5}
    if ik_grip_rotate_order and rotate_order_dict.keys():
        temp_loc = miscutil.create_locator_at_object(ik_grip)
        ik_grip.rotateOrder.set(rotate_order_dict[ik_grip_rotate_order])
        miscutil.align(temp_loc, ik_grip, point = False, orient = True)
        pm.delete(temp_loc)
        
    #if 4 joint chain last joint rotation moves with ik grip
    if len(chain) == 4:
        pm.orientConstraint(ik_grip, end_joint, mo = 1, w = 1)
                
    pv_grip.setParent(pv_grip.get_zero_transform())
    ik_grip.setParent(ik_grip.get_zero_transform())

    #create dictionary
    return_dictionary['chain'] = chain
    return_dictionary['start_joint'] = start_joint
    return_dictionary['end_joint'] = end_joint
    return_dictionary['ik_handle'] = ik
    return_dictionary['ik_zero'] = ik_zero_group
    return_dictionary['ik_effector'] = eff
    return_dictionary['ik_grip'] = ik_grip
    return_dictionary['pv_grip'] = pv_grip
    return_dictionary['pv_constraint'] = pv_constraint
    return_dictionary['ik_constraint'] = ik_constraint
    return_dictionary['pv_line'] = pv_line
    return return_dictionary
    
def rig_ik_sc_chain(start_joint, end_joint, region = None):
    return_dictionary = {}
    if not pm.objExists(start_joint):
        raise pm.MayaNodeError("start_joint given, {0} , doesn't exist".format(start_joint))
    if not pm.objExists(end_joint):
        raise pm.MayaNodeError("end_joint given, {0} , doesn't exist".format(end_joint))
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    
    chain = [start_joint, end_joint]
    if not region:
        region = start_joint.getAttr('type')
        region = str(region).strip().lower()
        if region == '2': region = 'leg'
        if region == '10': region = 'arm'
    side = start_joint.getAttr('side')
    side = str(side).strip().lower()
    if side == '1': side = 'l'
    if side == '2': side = 'r'
    ik, eff = pm.ikHandle( sol = 'ikSCsolver', sj = start_joint, ee = end_joint)
    ik.rename('{0}_{1}_ikhandle'.format(side, region))
    ik.visibility.set(0)

    #create dictionary
    return_dictionary['chain'] = chain
    return_dictionary['start_joint'] = start_joint
    return_dictionary['end_joint'] = end_joint
    return_dictionary['ik_handle'] = ik
    return_dictionary['ik_effector'] = eff
    return return_dictionary
    