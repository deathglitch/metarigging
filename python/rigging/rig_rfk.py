import pymel.core as pm
import grip
import metautil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil

def rig_rfk_chain(start_joint, end_joint):
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    rfk_chain = miscutil.get_nodes_between(start_joint, end_joint)
    num_mid_joints = len(rfk_chain) - 3# start_joint, end_joint, and last_deform_joint

    #create grips
    name = rfk_chain[0].nodeName()
    name_root = miscutil.get_name_root(name).replace("_dupe", "")[2:]
    start_rotate_grip = grip.Grip.create_grip_ratio(rfk_chain[0], name_root=name_root)
    name = rfk_chain[-2].nodeName()
    name_root = miscutil.get_name_root(name).replace("_dupe", "")[2:]
    end_rotate_grip = grip.Grip.create_grip_ratio(rfk_chain[-2], name_root=name_root)
    
    mid_groups = []
    mid_grips = []
    for inc in xrange(num_mid_joints):
        mid_joint = rfk_chain[inc+1]
        mid_group = pm.group(empty = True, n = "rfk_mid_group_{0}".format(inc))
        miscutil.align(mid_joint, mid_group, point = True, orient = True)
        #create aims
        #start_aims
        start_weight = 1-pm.util.smoothstep(0,1,(inc+1.0)/(num_mid_joints+1.0))
        start_grip_loc = rigutil.create_locator_at_object(start_rotate_grip)
        start_grip_loc.rename("start_grip_aims_orient_{0}".format(inc))
        start_grip_loc_zero = rigutil.add_zero_transform(start_grip_loc)
        start_x_loc = rigutil.create_locator_at_object(start_rotate_grip)
        start_x_loc.rename("start_grip_aim_x_{0}".format(inc))
        start_y_loc = rigutil.create_locator_at_object(start_rotate_grip)
        start_y_loc.rename("start_grip_aim_y_{0}".format(inc))
        start_x_loc.setParent(start_grip_loc)
        start_y_loc.setParent(start_grip_loc)
        miscutil.align(mid_joint, start_grip_loc_zero, point = True, orient = False)
        pm.move(start_x_loc, [5,0,0], r=1, os=1)
        pm.move(start_y_loc, [0,5,0], r=1, os=1)
        pm.orientConstraint(start_rotate_grip, start_grip_loc, w=1, mo = 0)
        #end_aims
        end_weight = 1-start_weight
        end_grip_loc = rigutil.create_locator_at_object(end_rotate_grip)
        end_grip_loc.rename("end_grip_aims_orient_{0}".format(inc))
        end_grip_loc_zero = metautil.add_zero_transform(end_grip_loc)
        end_x_loc = rigutil.create_locator_at_object(end_rotate_grip)
        end_x_loc.rename("end_grip_aim_x_{0}".format(inc))
        end_y_loc = rigutil.create_locator_at_object(end_rotate_grip)
        end_y_loc.rename("end_grip_aim_y_{0}".format(inc))
        end_x_loc.setParent(end_grip_loc)
        end_y_loc.setParent(end_grip_loc)
        miscutil.align(mid_joint, end_grip_loc_zero, point = True, orient = False)
        pm.move(end_x_loc, [5,0,0], r=1, os=1)
        pm.move(end_y_loc, [0,5,0], r=1, os=1)
        pm.orientConstraint(end_rotate_grip, end_grip_loc, w=1, mo = 0)
        #final_aims
        end_rotate_grip.addAttr("twist_bias_{0}".format(inc+1), dv = end_weight, min = 0, max = 1, keyable = True)
        bias_attr = end_rotate_grip.attr("twist_bias_{0}".format(inc+1))
        bias_attr.set(keyable = False, cb = True)
        weight_reverse = pm.createNode("reverse", n = "bias_{0}_reverse".format(inc+1))
        bias_attr >> weight_reverse.inputX
        x_aim_loc = pm.spaceLocator()
        x_aim_loc.rename("aim_x_locator_{0}".format(inc))
        x_const = pm.pointConstraint([start_x_loc, end_x_loc], x_aim_loc, w=1.0, mo = False)
        y_aim_loc = pm.spaceLocator()
        y_aim_loc.rename("aim_y_locator_{0}".format(inc))
        y_const = pm.pointConstraint([start_y_loc, end_y_loc], y_aim_loc, w=1.0, mo = False)
        
        weight_reverse.outputX >> x_const.getWeightAliasList()[0]
        bias_attr >> x_const.getWeightAliasList()[1]
        weight_reverse.outputX >> y_const.getWeightAliasList()[0]
        bias_attr >> y_const.getWeightAliasList()[1]
        #x_const.setWeight(start_weight, start_x_loc)
        #x_const.setWeight(end_weight, end_x_loc)
        #y_const.setWeight(start_weight, start_y_loc)
        #y_const.setWeight(end_weight, end_y_loc)
        
        #create aim
        #label = miscutil.get_object_base_name(mid_joint.name())
        name = mid_joint.nodeName()
        name = miscutil.get_name_root(name).replace("_dupe", "")[2:]
        mid_control = pm.spaceLocator()
        mid_control.rename("mid_{0}_aimer".format(inc))
        mid_control.rotateOrder.set(mid_joint.rotateOrder.get())
        mid_control_zero = metautil.add_zero_transform(mid_control)
        miscutil.align(mid_joint, mid_control_zero, point = True, orient = False)
        start_grip_loc_zero.setParent(mid_control_zero)
        end_grip_loc_zero.setParent(mid_control_zero)
        pm.aimConstraint(x_aim_loc,mid_control,w=1,offset=[0,0,0],mo=False,aimVector=[1,0,0],upVector=[0,1,0],worldUpType="object",worldUpObject=y_aim_loc)
        offset_group = pm.group(empty = True, n = "mid_{0}_offset_group".format(inc))
        offset_group.rotateOrder.set(mid_joint.rotateOrder.get())
        miscutil.align(mid_control, offset_group)
        offset_group.setParent(mid_control)
        miscutil.align(mid_joint, offset_group)
        mid_grip = grip.Grip.create(mid_joint, name_root = name)
        #mid_grip.set_as_detail()
        pm.orientConstraint(offset_group, mid_grip.get_zero_transform(), w=1, mo = 0)
        pm.pointConstraint(mid_joint, mid_grip, w=1)
        
        #control mid joint
        other_const = pm.pointConstraint(mid_joint, mid_control_zero, mo = 0, w=1)
        pm.orientConstraint(mid_grip, mid_joint, mo = 0, w=1)
        mid_control_zero.setParent(mid_group)
        y_aim_loc.setParent(mid_group)
        x_aim_loc.setParent(mid_group)
        mid_groups.append(mid_group)
        mid_grips.append(mid_grip)
    #final constriants 
    pm.pointConstraint(rfk_chain[-2], end_rotate_grip, mo = 0, w=1)
    pm.pointConstraint(rfk_chain[0], start_rotate_grip, mo = 0, w=1)
    pm.orientConstraint(end_rotate_grip, rfk_chain[-2], mo = 0, w=1)
    pm.orientConstraint(start_rotate_grip, start_joint, mo = 0, w=1)

    result = {}
    result['start_joint'] = start_joint
    result['end_joint'] = end_joint
    result['mid_grips'] = mid_grips
    result['mid_groups'] = mid_groups
    result['start_twist_grip'] = start_rotate_grip
    result['end_twist_grip'] = end_rotate_grip
    return result