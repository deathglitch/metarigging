import pymel.core as pm
import grip
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil

def rig_fk_chain(start_joint, end_joint, root_zero_transform = True, children_zero_transforms = True):
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    chain = miscutil.get_nodes_between(start_joint, end_joint, lambda x: isinstance(x, pm.nt.Joint))
    grips = []
    parent_consts = []
    last = None
    for x, joint in enumerate(chain[:-1]):
        name = pm.PyNode(joint).nodeName()
        name = miscutil.get_name_root(name).replace('_dupe', "")[2:]
        grip_node = ""
        if x == 0:
            grip_node = grip.Grip.create_grip(joint, name = name, add_zero = root_zero_transform)
        else:
            grip_node = grip.Grip.create_grip(joint, name = name, add_zero = children_zero_transforms)

        const = pm.parentConstraint(grip_node, joint, w=1, mo=1)
        if last:
            rigutil.get_zero_transform(grip_node).setParent(last)
        last = grip_node
        grips.append(grip_node)
        parent_consts.append(const)
 
    result = {}
    result['chain'] = chain
    result['start_joint'] = start_joint
    result['end_joint'] = end_joint
    result['grips'] = grips
    result['parent_consts'] = parent_consts
    
    return result