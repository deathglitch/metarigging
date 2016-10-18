import pymel.core as pm
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil

class Chain():
    
    @staticmethod
    def create(start_joint, end_joint):
        start_joint = pm.PyNode(start_joint)
        end_joint = pm.PyNode(end_joint)
        
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nt.Joint))
        
        side = start_joint.side.get().lower()
        for joint in chain_between:
            if not joint.side.get().lower() == side:
                raise StandardError('chain error - not all joints have the same side ({0}, {1})!'.format(start_joint, end_joint))
                
        return list(set(start_joint, chain_between, end_joint))

def create_duplicate_chain(start_joint, end_joint, suffix = 'dupe'):
    chain_between = miscutil.get_nodes_between(start_joint, end_joint)
    parent = None
    new_chain = []
    for joint in chain_between:
        new_joint = pm.duplicate(joint, po=1)[0]
        new_joint = pm.PyNode(new_joint)
        new_joint.rename(miscutil.get_name_root(joint.nodeName()) + '_' + suffix)
        new_chain.append(new_joint)
        if parent:
            pm.parent(new_joint, parent)
        parent = new_joint
    return new_chain

        