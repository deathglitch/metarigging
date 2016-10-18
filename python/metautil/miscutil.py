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
    
def get_name_root(node):
    # trims off hierarchy and namespaces
    return node.split(':')[-1]
    
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
    
def lock_and_hide_attr_objects(attr_list):
    attr_list = map(lambda attr: pm.PyNode(attr), attr_list)
    
    for attr in attr_list:
        attr.setKeyable(0)
        attr.lock()
        
def lock_all_keyable_attrs(node, hidden = False):
    node = pm.PyNode(node)
    keyable_attrs = node.listAttr(keyable=True)
    if keyable_attrs:
        for keyable_attr in keyable_attrs:
            keyable_attr.lock()
            if hidden:
                keyable_attr.setKeyable(0)

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

def align(target, node, point = True, orient = True):
    target = pm.PyNode(target)
    node = pm.PyNode(node)
    
    if not pm.objExists(target):
        raise StandardError('align: target {0} does not exist.'.format(target))
    if not pm.objExists(node):
        raise StandardError('align: node {0} does not exist.'.format(node))
        
    dup = pm.duplicate(node, rc = True)[0]
    
    if dup.getParent():
        dup.setParent(None)#parent to world to stop this node from causing cycle
    
    pm.delete(dup.getChildren())#delete children in case they cause a cycle
    constraints = []
    
    if point:
        point_const = safe_point_constraint(target, dup)
        constraints.append(point_const)
    
    if orient:
        orient_const = safe_orient_constraint(target, dup)
        constraints.append(orient_const)
    
    pm.delete(constraints)
    
    #parent dup in same space, then transfer translation and rotation
    if node.getParent() and node.inheritsTransform.get():#if inheritsTransforms is off, this will pop it back to initial position
        dup.setParent(node.getParent())
    
    if point:
        if node.getAttr('tx', settable = True) and not node.getAttr('tx', lock = True):
            node.translateX.set(dup.translateX.get())
        if node.getAttr('ty', settable = True) and not node.getAttr('ty', lock = True):
            node.translateY.set(dup.translateY.get())
        if node.getAttr('tz', settable = True) and not node.getAttr('tz', lock = True):
            node.translateZ.set(dup.translateZ.get())
    
    if orient:
        if node.getAttr('rx', settable = True) and not node.getAttr('rx', lock = True):
            node.rotateX.set(dup.rotateX.get())
        if node.getAttr('ry', settable = True) and not node.getAttr('ry', lock = True):
            node.rotateY.set(dup.rotateY.get())
        if node.getAttr('rz', settable = True) and not node.getAttr('rz', lock = True):
            node.rotateZ.set(dup.rotateZ.get())

    pm.delete(dup)
    return
    
def reset_attrs(node):
    if not pm.objExists(node):
        pm.error('reset_attrs: node deosn\'t exist \'{0}\'.'.format(node))
    attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz']
    for attr in attrs:
        if not node.attr(attr).isLocked():
            node.attr(attr).set(0)

def invert_attribute(attr):
    name_root = pm.PyNode(attr).nodeName().split(':')[-1]
    node_name = name_root
    node_name = node_name.replace('.', '_')
    reverse_node = pm.createNode("setRange", n="{0}_inverse_attr".format(node_name))
    pm.setAttr(".min", [0, 1, 0], k=False, lock=True)
    pm.setAttr(".max", [1, 0, 100], k=False, lock=True)
    pm.setAttr(".oldMin", [0, 0, 0], k=False, lock=True)
    pm.setAttr(".oldMax", [1, 1, 1], k=False, lock=True)
    pm.aliasAttr("straight", "{0}.outValueX".format(reverse_node), "inverse" ,"{0}.outValueY".format(reverse_node), "percentage", "{0}.outValueZ".format(reverse_node))
    pm.connectAttr(attr, "{0}.valueX".format(reverse_node), force=True)
    pm.connectAttr(attr, "{0}.valueY".format(reverse_node), force=True)
    pm.connectAttr(attr, "{0}.valueZ".format(reverse_node), force=True)
    return reverse_node
            
def check_if_attrs_are_keyable(node, attrs):
    keyable_attrs = []
    for attr in attrs:
        if node.attr(attr).isKeyable():
            keyable_attrs.append(attr)
    return keyable_attrs
            
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
    
    distance_node = pm.distanceDimension(sp = node1_pos, ep = node2_pos)
    distance = distance_node.distance.get()
    pm.delete(pm.listConnections(distance_node))
    
    if sel:
        pm.select(sel)
    return distance
    
def get_nodes_between(first, last, criteria = lambda x: True):
    first = pm.PyNode(first)
    last = pm.PyNode(last)
    collection = []
    collection.append(last)
    current_node = last
    while first != current_node:
        current_node = current_node.getParent()
        if not current_node:
            raise StandardError("{0} is not an ancestor of {1}".format(first, last))
        collection.append(current_node)
    result = [node for node in collection if criteria(node)]
    result.reverse()
    return result
    
def get_start_time():
    return pm.playbackOptions(q=1, min=1)
    
def get_end_time():
    return pm.playbackOptions(q=1, max=1)
    
def bake(objects, time, smart = [False], simulation = True, hierarchy = "none", sampleBy = 1, preserveOutsideKeys = True, sparseAnimCurveBake = False, attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v']):
    pm.bakeResults(objects,
                            smart=[False],
                            simulation=True, #this is always True because False causes Maya to hang
                            t=time,
                            hierarchy="none",
                            sampleBy=1,
                            #disableImplicitControl=True,
                            preserveOutsideKeys=False,
                            sparseAnimCurveBake=False,
                            at=attrs)
    return

def safe_parent_constraint(target, node, mo=False, skip_rotate = [], skip_translate = []):
    node = pm.PyNode(node)
    result = None
    stx = "none"
    sty = "none"
    stz = "none"
    srx = "none"
    sry = "none"
    srz = "none"
    
    if not node.getAttr('tx', settable=True) or "x" in skip_translate:
        stx = "x"
    
    if not node.getAttr('ty', settable=True) or "y" in skip_translate:
        sty = "y"
    
    if not node.getAttr('tz', settable=True) or "z" in skip_translate:
        stz = "z"
    
    if not node.getAttr('rx', settable=True) or "x" in skip_rotate:
        srx = "x"
    
    if not node.getAttr('ry', settable=True) or "y" in skip_rotate:
        sry = "y"
    
    if not node.getAttr('rz', settable=True) or "z" in skip_rotate:
        srz = "z"
        
    #verify that there are keyable attrs on node before adding constraint
    if check_if_attrs_are_keyable(node, ['tx', 'ty', 'tz', 'rx', 'ry', 'rz']):
        const = pm.parentConstraint(target, node, mo=mo, st=(stx, sty, stz), sr=(srx, sry, srz))
        result = const
    
    return result
    
def safe_point_constraint(target, node, mo=False):
    node = pm.PyNode(node)
    const = None
    skx = "none"
    sky = "none"
    skz = "none"
    
    if not node.getAttr('tx', settable=True) or node.getAttr('tx', lock=True):
        skx = "x"
    
    if not node.getAttr('ty', settable=True) or node.getAttr('ty', lock=True):
        sky = "y"
    
    if not node.getAttr('tz', settable=True) or node.getAttr('tz', lock=True):
        skz = "z"
    
    if skx == "none" or sky == "none" or skz == "none":
        const = pm.pointConstraint(target, node, mo=mo, sk=(skx, sky, skz))
    
    return const
    
def safe_orient_constraint(target, node, mo=False):
    node = pm.PyNode(node)
    const = None
    skx = "none"
    sky = "none"
    skz = "none"
    
    if not node.getAttr('rx', settable=True) or node.getAttr('rx', lock=True):
        skx = "x"
    
    if not node.getAttr('ry', settable=True) or node.getAttr('ry', lock=True):
        sky = "y"
    
    if not node.getAttr('rz', settable=True) or node.getAttr('rz', lock=True):
        skz = "z"
    
    if skx == "none" or sky == "none" or skz == "none":
        const = pm.orientConstraint(target, node, mo=mo, sk=(skx, sky, skz))
    
    return const

def is_constrained(node):
    for attr in ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz']:
        if(len(pm.listConnections(node+'.'+attr, type='constraint'))):
            return True
    return False    