import pymel.core as pm
import grip
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil

def rig_reverse_chain(start_joint, end_joint):
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    chain = miscutil.get_nodes_between(start_joint, end_joint, lambda x: isinstance(x, pm.nt.Joint))
    if not len(chain) == 2:
        raise StandardError('No joints between start_joint and end_joint!')
        
    rotate_joint = pm.duplicate(end_joint, po=1)[0]
    end_rotate_joint = pm.duplicate(start_joint, po=1)[0]
    end_rotate_joint.setParent(rotate_joint)
    rotate_joint.setParent(None)
    rotate_joint.v.set(0)
    name = miscutil.get_name_root(start_joint).replace('_dupe', '')[2:]
    rotate_grip = grip.Grip.create_grip_ratio(rotate_joint, name_root = name)
    parent_consts = []
    parent_consts.append(pm.parentConstraint(rotate_grip, rotate_joint, w=1, mo=1))
    parent_consts.append(pm.parentConstraint(end_rotate_joint, start_joint, w=1, mo=1))

    result = {}
    result['chain'] = chain
    result['start_joint'] = start_joint
    result['end_joint'] = end_joint
    result['rotate_joint'] = rotate_joint
    result['grips'] = rotate_grip
    result['parent_consts'] = parent_consts
    
    return result