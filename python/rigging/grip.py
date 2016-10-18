import pymel.core as pm
import metautil
import metautil.miscutil as miscutil

class Grip():
    
    def __init__(self, node):
        self.pynode = None
        if not node or not pm.objExists(node):
            raise pm.MayaNodeError("object given, {0}, doesn't exist".format(node))
        node = pm.PyNode(node)
        if not (node.hasAttr('is_grip') and isinstance(node, pm.nodetypes.Joint)):
            raise pm.MayaNodeError("object given, {0}, isn't a grip".format(node))
        self.pynode = node
    
    @staticmethod
    def create(driven_node, name_prefix='gr_', name_root=None, strip_prefix=0, shape=None, zero_transform=True):
        '''Creates a grip object matching the input driven_node. If no shape is specified a cube will be created.
        '''
        grip = None
        
        #create joint transform
        if name_root == None:
            name_root = driven_node.stripNamespace();
        pm.select(cl=True)
        '''
        node = pm.PyNode(node)
        grip = pm.joint( n='gr_{0}'.format(name) )
        add_box_shape(grip, 1)
        miscutil.align_point_orient(grip, node)
        pm.makeIdentity(grip, apply = True, t = 0, r = 1, s = 0, n = 0)
        if add_zero:
            metautil.add_zero_transform(grip)
        pm.addAttr(grip, at='bool', ln='is_grip', dv=True)
        #pm.addAttr('grip_layer', sn='grip_layer', dt='string')
        grip.radius.set(keyable = False, channelBox = False)
        grip = Grip(grip)
        '''
        grip = pm.joint( n= '{0}{1}'.format(name_prefix, name_root) )
        pm.addAttr( grip, at='bool', ln='is_grip', dv=True)
        
        #add shape node
        if not shape:
            shape = fit_box_shape(driven_node, 2)
        
        shape = swap_shape_node(grip, shape)
        miscutil.align_point_orient(grip, driven_node)
        pm.makeIdentity(grip, apply = True, t = 0, r = 1, s = 0, n = 0)
        
        if zero_transform:
            metautil.add_zero_transform(grip)

        grip.radius.set(keyable = False, channelBox = False)
        grip = Grip(grip)
        return grip
        
    @staticmethod
    def create_grip_box(target):
        box = add_box_shape_ratio(target, 1)
        miscutil.align_point_orient(target, box)
        return box
        
    def lock_and_hide_attrs(self, attrs):
        miscutil.lock_and_hide_attrs(self, attrs)
        return
        
    def get_grip_layer(self):
        return
    
    def set_grip_layer(self):
        return
        
    def set_as_detail(self):
        return
        
    def setParent(self, object):
        return
        
    def get_zero_transform(self):
        return self.zero_transform.listConnections()[0]
        
    def add_control_transform(self):
        return
        
    def replace_shape(self, new_shape):
        return
        
    def duplicate_grip_shape(self, flag = None):
        return
        
    def mirror_grip_shape(self, flag = None):
        return
        
    def __getattr__(self, attrname):
        return getattr(self.pynode, attrname)
        
    def __str__(self):
        return self.pynode.__str__()
     
    def __melobject__(self):
        return self.pynode.__melobject__()
    
    def __apimfn__(self):
        return self.pynode.__apimfn__()
        
    def __repr__(self):
        return self.pynode.__repr__()

    def __radd__(self, other):
        return self.pynode.__radd__(other)

    def __reduce__(self):
        return self.pynode.__reduce__()
    
    def __eq__(self, other):
        return self.pynode.__eq__(other)
       
    def __ne__(self, other):
        return self.pynode.__ne__(other)

    def __nonzero__(self):
        return self.pynode.__nonzero__()

    def __lt__(self, other):
        return self.pynode.__lt__(other)
        
    def __gt__(self, other):
        return self.pynode.__gt__(other)
        
    def __le__(self, other):
        return self.pynode.__le__(other)
        
    def __ge__(self, other):
        return self.pynode.__ge__(other)
        
    def __hash__(self):
        return self.pynode.__hash__()
        
def add_box_shape(node, width):
    box = fit_box_shape(node, width)
    shape = swap_shape_node(box, node)
    pm.reorder(shape, f=1)
    return shape

def add_box_shape_ratio(node, width_ratio):
    box = fit_box_shape_ratio(node, width_ratio)
    shape = swap_shape_node(box, node)
    pm.reorder(shape, f=1)
    return shape
    
def fit_box_shape(node, width):
    if not pm.objExists(node):
        pm.error('fit_box_shape: {0} doesn\'t exist.'.format(node))
    name = node.stripNamespace().nodeName() + '_box'
    box = pm.polyCube(n=name, w=1, h=1, d=1, ch=0)[0]#, ax=(0, 1, 0))[0]
    
    if (len(pm.listRelatives(node, pa=1, c=1, type='transform'))):
        downward_axis = metautil.get_downward_axis(node)
        b = pm.listRelatives(node, pa=1, c=1)
        child = b[0]
        
        pm.move(box, 0, 0.5, 0)
        pm.move(0, 0, 0, box+'.scalePivot', ws=1, xyz=1)
        pm.move(0, 0, 0, box+'.rotatePivot', ws=1, xyz=1)
        pm.makeIdentity(box, apply=True, t=1, r=1, s=1, n=0)
        pm.parent(box, node)
        metautil.reset_attrs(box)
        if downward_axis == 'y':
            print 'fix_box_shape: downward axis is Y.'
        if downward_axis == 'x':
            box.rotate.set(0, 0, -90)
        if downward_axis == 'z':
            box.rotate.set(90, 0, 0)
        if downward_axis == '-y':
            box.rotate.set(180, 0, 0)
        if downward_axis == '-x':
            box.rotate.set(0, 0, 90)
        if downward_axis == '-z':
            box.rotate.set(-90, 0, 0)
        print 'downward_axis:', downward_axis
        pm.parent(box, w=1)
        distance = metautil.distance_between(node, child)
        box.scale.set(width, distance, width)
        pm.parent(box, node)
        pm.makeIdentity(box, apply=True, t=1, r=1, s=1, n=0)
        pm.parent(box, w=1)
        
    if not (len(pm.listRelatives(node, pa=1, c=1, type='transform'))):
        if pm.listRelatives(node, pa=1, p=1):
            parent = pm.listRelatives(node, pa=1, p=1)
            distance = metautil.distance_between(parent[0], node)
            if distance:
                width = distance / 3
                
        pm.parent(box, node)
        metautil.reset_attrs(box)
        box.scale.set(width, width, width)
        
        pm.makeIdentity(box, apply=True, t=1, r=1, s=1, n=0)
        pm.parent(box, w=1)
    return box

def fit_box_shape_ratio(node, width_ratio):
    width = 1
    if len(pm.listRelatives(node, pa=1, c=1, type='transform')):
        child = pm.listRelatives(node, pa=1, c=1)[0]
        distance = metautil.distance_between(node, child)
        width = distance * width_ratio
    box = fit_box_shape(node, width)
    return box
    
def swap_shape_node(node, new_shape):
    new_shape_node = new_shape.listRelatives(pa=1, s=1)
    if not len(new_shape_node):
        raise pm.MayaNodeError("Shape node not found on '{0}'".format(new_shape))
    shape = pm.parent(new_shape_node[0], node, s=1, add=1)[0]
    pm.delete(new_shape)
    return shape
    

    
    