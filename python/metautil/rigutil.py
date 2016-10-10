import pymel.core as pm
import metarig

def create_core_metanode_graph(root_joint, type='character', name = None, object_id = None, base_dir = None, source_file_path = None):
    #check root joint
    #check for current meta_root
    meta_root = metarig.MetaRoot.create(root_joint, type, name, object_id, base_dir, source_file_path)
    #check for metaanimrender
    metarender = metarig.MetaAnimRender.create(meta_root)
    metarender.set_metanode_parent(meta_root)
    
    return metaroot

def get_metaroot_from_root_joint(root_joint):
    return root_joint.listConnections(s=1, d=0, type='network')[0]

def get_metaroot(node):
    metaroot = None
    metanode = None
    if not node and not pm.ls(sl=1):
        pm.error('get_metaroot: select a node on the object hierarchy.')
    elif not node:
        node = pm.ls(sl=1)[0]
        
    if node.hasAttr('meta_type'):
        if node.meta_type.get() == 'MetaRoot':
            return node
        else:
            metanode = node
            
    if metanode is None:
        all_parents = pm.listConnections(node, type='network')
        for parent in all_parents:
            if parent.hasAttr('meta_type') and parent.meta_type.get() == 'MetaRoot':
                return parent
            meta_parent = get_meta_parent(parent)
            if meta_parent != None:
                metanode = meta_parent

    if metanode:
        if metanode.hasAttr('meta_type') and metanode.meta_type.get() == 'MetaRoot':
            return metanode
        
        count = 0
        type = metanode.meta_type.get()
        parent = get_meta_parent(metanode)
        while (type != 'MetaRoot') and (not parent) and (count < 100):
            print 'getting more parents...'
            if (metanode.meta_type.get() == 'MetaRoot'):
                return metanode
            parent = get_meta_parent(parent)
            if not parent:
                return None
            metanode = parent
            count += 1
        if (parent.meta_type.get() == 'MetaRoot'):
            return parent
        else:
            return None
    return metaroot
    
def get_all_metaroots():
    metaroots = []
    nodes = pm.ls(type='network')
    for node in nodes:
        if node.hasAttr('meta_type'):
            if node.meta_type.get() == 'MetaRoot':
                metaroots.append(node)
    return metaroots
    
def get_meta_parent(node):
    if not pm.objExists(node):
        pm.error('get_meta_parent: no such node {0}'.format(node))
    if not node.hasAttr('meta_parent'):
        return None
    
    meta_parent = pm.listConnections(node+'.meta_parent', s=1, d=0)[0]
    if not meta_parent.hasAttr('meta_type'):
        return None
        
    return meta_parent
    

def create_zero_transform(node):
    pass
    