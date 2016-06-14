import pymel.core as pm
import maya.cmds as cmds
import metautil

def import_into_namespace(path, ns):
    ns = metautil.get_unique_name(ns)
    cmds.file(path, i=1, type='mayaAscii', ns=ns, ra=1, options='v=0')
    return
    
def get_project_data_dir():
    if not pm.optionVar(q='metaRiggingProjectDataDir'):
        result = pm.optionVar(sv=('metaRiggingProjectDataDir', r'c:/metarigging/python/data/'))
    else:
        result = pm.optionVar(q='metaRiggingProjectDataDir')
    return result

def set_project_data_dir(project_path):
    # format: c:/metarigging/python/data/
    result = pm.optionVar(sv=('metaRiggingProjectDataDir', project_path))
    return result
    
def get_bone_side_index(side):
    index = 3
    if side[0].lower() == 'c':
        index = 0
    if side[0].lower() == 'l':
        index = 1
    if side[0].lower() == 'r':
        index = 2
    return index
    
def find_bone(ns, side, type):
    nsp = ':'
    if ns != ':':
        nsp = ns + ':'
    skeleton = pm.ls(nsp+'*.type', type='joint', o=1)
    side_index = get_bone_side_index(side)
    
    for bone in skeleton:
        if bone.hasAttr('bGrip'):
            continue
        bone_type = bone.getAttr('type', asString=1)
        if bone_type == 'Other':
            bone_type = bone.otherType.get()
        if bone_type.lower() == type.lower() and bone.side.get() == side_index:
            return bone
    return None
    
def copy_fbik_attrs(source, target):
    if not isinstance(source, pm.nt.Joint) and not isinstance(target, pm.nt.Joint):
        pm.error('copy_fbik_attrs: one of the input nodes ({0}, {1}) is not a joint.'.format(source.name(), target.name()))
    target.side.set(source.side.get())
    target.setAttr('type', source.getAttr('type'))
    target.otherType.set(source.otherType.get())
    
def lock_visible_attrs(node):
    keyable_attrs = []
    if pm.objExists(node):
        keyable_attrs = pm.listAttr(node, k=1)
    if keyable_attrs:
        for attr in keyable_attrs:
            node.attr(attr).lock()
    return
    
def lock_and_hide_attrs(node, attrs):
    if pm.objExists(node):
        if not attrs:
            attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v']
        for attr in attrs:
            node.attr(attr).lock()
            node.attr(attr).setKeyable(0)
    return
    
def align_point_orient(source = "", destination = "", point = True, orient = True):
    # error checking
    if not source and not destination:
        if not pm.ls(sl=1) or len(pm.ls(sl=1)) != 2:
            pm.error('align_point_orient: Can\'t find selection to align to.')
        else:
            sel = pm.ls(sl=1)
            source, destination  = (pm.ls(sl=1))
    else:
        sel = [source, destination]

    # duplicate the source object
    dupe = pm.duplicate(source, renameChildren=True)[0]
    
    # make a list of the possible constraint axes
    axes = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz']
    
    # get a list of current locked axes on the source object
    locked = [x for x in axes if pm.getAttr(source+'.'+x, se=1)]
    
    # strip out the axes that we need to skip due to them being locked
    skip = [x for x in axes if x not in locked]
    
    # do the constraining
    if point:
        pm.parentConstraint(destination, dupe, st=[x[1] for x in skip if x == 'tx' or x == 'ty' or x == 'tz'], sr=['x', 'y', 'z'])
    if orient:
        pm.parentConstraint(destination, dupe, sr=[x[1] for x in skip if x == 'rx' or x == 'ry' or x == 'rz'], st=['x', 'y', 'z'])        
        
    # transfer the attributes from the dupe object to the source object now that it's contrained
    for x in range(len(axes)):
        if not pm.listAttr(source+'.'+axes[x], locked=1):
            pm.setAttr(source+'.'+axes[x], pm.getAttr(dupe+'.'+axes[x]))
            
    # cleanup
    pm.delete(dupe)
    pm.select(cl=1)
    for obj in sel:
        if pm.objExists(obj):
            pm.select(obj, add=1)

    return
    
def reset_attrs(node):
    if not pm.objExists(node):
        pm.error('reset_attrs: node deosn\'t exist \'{0}\'.'.format(node))
    attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz']
    for attr in attrs:
        if not node.attr(attr).isLocked():
            node.attr(attr).set(0)
    
def get_downward_axis(node):
    children = pm.listRelatives(node, pa=1, c=1, type='transform')
    longest_dist = 0
    equidistant_warning = 0
    
    for child in children:
        transform = pm.xform(child, q=1, t=1)
        for axis in range(2):
            equidistant_warning += (abs(transform[axis]) == abs(longest_dist))
            
            if (abs(transform[axis]) > abs(longest_dist)):
                longest_axis = axis
                longest_dist = transform[axis]
                equidistant_warning = 0
                
    if longest_dist == 0:
        longest_axis = node.ro.get() % 3
    
    negative = ""
    if longest_dist < 0:
        negative = '-'
        
    if longest_axis == 0:
        return negative + 'x'
    if longest_axis == 1:
        return negative + 'y'
    if longest_axis == 2:
        return negative + 'z'
        
    return None
    
def distance_between(node1, node2):
    sel = pm.ls(sl=1)
    if not pm.objExists(node1):
        error('distance_between: can\'t find first input node, {0}.'.format(node1))
    if not pm.objExists(node2):
        error('distance_between: can\'t find second input node, {0}.'.format(node2))
    
    node1_pos = pm.xform(node1, q=1, ws=1, t=1)
    node2_pos = pm.xform(node2, q=1, ws=1, t=1)
    
    distance_node = pm.distanceDimension(sp=node1_pos, ep=node2_pos)
    distance = distance_node.distance.get()
    pm.delete(pm.listConnections(distance_node))
    
    if sel:
        pm.select(sel)
    return distance