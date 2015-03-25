import pymel.core as pm

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
        if node.meta_type.get() == 'metaroot':
            return node
        else:
            metanode = node
            
    if metanode is None:
        all_parents = pm.listConnections(node, type='network')
        for parent in all_parents:
            if parent.hasAttr('meta_type') and parent.meta_type.get() == 'metaroot':
                return parent
            meta_parent = get_meta_parent(parent)
            if meta_parent != None:
                metanode = meta_parent
                
    if metanode:
        if metanode.hasAttr('meta_type') and metanode.meta_type.get() == 'metaroot':
            return metanode
        
        count = 0
        type = metanode.meta_type.get()
        parent = get_meta_parent(metanode)
        while (type != 'metaroot') and (not parent) and (count < 100):
            if (metanode.meta_type.get() == 'metaroot'):
                return metanode
            parent = get_meta_parent(parent)
            if not parent:
                return None
            metanode = parent
            count += 1
        return None
    return metaroot
    
def get_all_metaroots():
    metaroots = []
    nodes = pm.ls(type='network')
    for node in nodes:
        if node.hasAttr('meta_type'):
            if node.meta_type.get() == 'metaroot':
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
    
def connect_node_to_metanode(node, metanode, connection):
    add_meta_parent_attr_to_node(node)
    if not pm.hasAttr(metanode, connection):
        pm.addAttr(metanode, sn=connection, dt='string')
    metanode.attr(connection) >> node.meta_parent
    return
    
def add_meta_parent_attr_to_node(node):
    if not pm.hasAttr(node, 'meta_parent'):
        pm.addAttr(node, sn='meta_parent', dt='string')
    return
    