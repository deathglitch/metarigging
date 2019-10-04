import pymel.core as pm
import grip
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import metautil.shapeutil as shapeutil

def rig_cog_chain(start_joint, end_joint, scale):
    start_joint = pm.PyNode(start_joint)
    end_joint = pm.PyNode(end_joint)
    chain = miscutil.get_nodes_between(start_joint, end_joint, lambda x: isinstance(x, pm.nt.Joint))
        
    grips = []
    parent_consts = []
    
    for x, joint in enumerate(chain):
        cog_shape_node = shapeutil.create_poly_shape_cog(scale)
        grip_node = grip.Grip.create(joint, shape=cog_shape_node, name_root = 'cog')
        grip_node.setAttr('rotateOrder', 2)
        parent_const = pm.parentConstraint(grip_node, joint, w=1, mo=1)
        grips.append(grip_node)
        parent_consts.append(parent_const)
        
    result = {}
    result['chain'] = chain
    result['start_joint'] = start_joint
    result['end_joint'] = end_joint
    result['grips'] = grips
    result['parent_consts'] = parent_consts
    
    return result