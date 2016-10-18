import pymel.core as pm
import metarig
import miscutil

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
    
    
def find_pv_location(start_joint, middle_joint, end_joint):
    '''finds the pole vector position based from three joints'''
    start_joint = pm.PyNode(start_joint)
    middle_joint = pm.PyNode(middle_joint)
    end_joint = pm.PyNode(end_joint)
    
    start_pos = pm.datatypes.Vector(start_joint.getTranslation(space = 'world'))
    mid_pos = pm.datatypes.Vector(middle_joint.getTranslation(space = 'world'))
    end_pos = pm.datatypes.Vector(end_joint.getTranslation(space = 'world'))	
    
    a_vector = end_pos - start_pos
    b_vector = mid_pos - start_pos
    a_magnitude = a_vector.length()
    b_magnitude = b_vector.length()
    dot_product = a_vector.dot(b_vector)
    
    projection_point = (dot_product / a_magnitude) * (a_vector / a_magnitude)
    projection_point = projection_point + start_pos
    
    ortho_vector = mid_pos - projection_point
    ortho_magnitude = ortho_vector.length()
    away_scale = 1.5 
    final_scale= (max(a_magnitude, b_magnitude) * away_scale / ortho_magnitude)
    final_point = ortho_vector * final_scale + projection_point
    return pm.datatypes.Point(final_point)

def find_pv_location_through_mid(start_joint, middle_joint, end_joint):
    '''finds the pole vector position based from three joints'''
    start_pos = pm.datatypes.Vector(pm.xform(start_joint, q=True, ws=True, t=True))
    mid_pos	 = pm.datatypes.Vector(pm.xform(middle_joint, q=True, ws=True, t=True))
    end_pos	 = pm.datatypes.Vector(pm.xform(end_joint, q=True, ws=True, t=True))

    mid_vector	= (start_pos - end_pos) / 2
    pv_mid_pos	= start_pos - mid_vector
    pv_vector	= mid_pos - pv_mid_pos

    scale_value = ((mid_pos - start_pos).length() + (end_pos - mid_pos).length()) * 1.3
    pv_loc = pv_mid_pos + pv_vector + pv_vector.normal() * scale_value
    return pm.datatypes.Point(pv_loc)

    
def create_locator_at_point(point, label=None):
    point = pm.datatypes.Point(point)
    locator = pm.spaceLocator(p=[0,0,0])
    if label:
        locator.rename(label)
    
    locator.translate.set(point)
    return locator	
    
def create_locator_at_object(object, label = None):
    if object == None or not pm.objExists(object):
        locator = pm.spaceLocator(p = [0, 0, 0])
        if label:
            locator.rename(label)
    else:
        object = pm.PyNode(object)
        locator = pm.spaceLocator(p = [0, 0, 0])
        
        if label:
            locator.rename(label)
        
        else:
            locator.rename(object.name() + "_loc")
        
        if object.hasAttr('rotateOrder'):
            locator.rotateOrder.set(object.rotateOrder.get())
        miscutil.align(object, locator)
    return locator
    
def create_line_between(object1, object2):
    '''draws a referenced line between two objects'''
    object1 = pm.PyNode(object1)
    object2 = pm.PyNode(object2)
    pos1 = object1.getTranslation(space = 'world')
    pos2 = object2.getTranslation(space = 'world')
    line = pm.curve(d = 1, p = [pos1, pos2], k = [0, 1])#linear curve
    obj1_cluster = pm.cluster(line.cv[0])[1]
    obj2_cluster = pm.cluster(line.cv[1])[1]
    pm.parent([obj1_cluster, obj2_cluster], line)
    line.inheritsTransform.set(0)
    obj1_cluster.inheritsTransform.set(0)
    obj2_cluster.inheritsTransform.set(0)
    obj1_cluster.hide()
    obj2_cluster.hide()
    pm.pointConstraint(object1, obj1_cluster, w = 1, mo = 1)
    pm.pointConstraint(object2, obj2_cluster, w = 1, mo = 1)
    line_shape = pm.PyNode(line).getShape()
    line_shape.overrideEnabled.set(1)
    line_shape.overrideDisplayType.set(1)#template
    line_shape.overrideColor.set(3) #set to grey color
    return line
    
def add_zero_transform(node):
    node = pm.PyNode(node)
    result = None
    if has_zero_transform(node):
        result = get_zero_transform(node)
    else:
        transform = pm.group(empty = True, n = miscutil.get_name_root(node.name()) + "_zero_transform")
        transform.rotateOrder.set(node.rotateOrder.get())
        miscutil.align(node, transform)
        node_parent = node.getParent()
        if node_parent:
            transform.setParent(node_parent)
        node.setParent(transform)
        if isinstance(node, pm.nodetypes.Joint):
            node.jointOrient.set([0,0,0])
        node.addAttr('zero_transform', at = 'message')
        transform.addAttr('zero_object', dt = 'string')
        transform.zero_object >> node.zero_transform
        result = transform
    return result
    
def has_zero_transform(node):
    node = pm.PyNode(node)
    result = False
    if node.hasAttr('zero_transform'):
        if node.zero_transform.listConnections():
            result = True
        else:
            raise StandardError('has_zero_transform: ' + str(node) + ' has zero_transform attr with no connection.')
    return result
    
def get_zero_transform(node):
    node = pm.PyNode(node)
    if has_zero_transform(node):
        return node.zero_transform.listConnections()[0]
    return None
