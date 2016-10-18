import pymel.core as pm
import metautil

class Grip():
    
    @staticmethod
    def create(driven_node, name_prefix='gr_', name_root=None, strip_prefix=0, shape=None, zero_transform=True):
        '''Creates a grip object matching the input driven_node. If no shape is specified a cube will be created.
        '''
        grip = None
        
        #create joint transform
        if name_root == None:
            name_root = driven_node.stripNamespace();
        pm.select(cl=True)
        grip = pm.joint( n= '{0}{1}'.format(name_prefix, name_root) )
        pm.addAttr( grip, at='bool', ln='isGrip', dv=True)
        
        #add shape node
        if not shape:
            shape = fit_box_shape(driven_node, 2)
        
        shape = swap_shape_node(grip, shape)
        
        if zero_transform:
            create_zero_transform(grip);
        
        return grip
        
    @staticmethod
    def create_grip_box(target):
        box = pm.polyCube()[0]
        #align box to target
        return box
        
    def lock_and_hide_attrs(self, attrs):
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
        return
        
    def add_control_transform(self):
        return
        
    def replace_shape(self, new_shape):
        return
        
    def duplicate_grip_shape(self, flag = None):
        return
        
    def mirror_grip_shape(self, flag = None):
        return
        
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
    
    
def create_zero_transform(node):
    '''Creates a parent transform and sets the input node's transforms to zero.
    '''
    zero_transform = pm.group(em=True, n='{0}_zero'.format(node.stripNamespace() ) )
    metautil.align_point_orient(zero_transform, node)
    
    #set parent
    node_parent = node.getParent()
    if node_parent:
        zero_transform.setParent(node_parent)
    node.setParent(zero_transform)
    if isinstance(node, pm.nodetypes.Joint):
        node.jointOrient.set([0,0,0])
    
    #markup connectoins
    node.addAttr('zeroTransform', at='message')
    zero_transform.addAttr('zeroNode', dt='string')
    zero_transform.zeroNode >> node.zeroTransform
    
    
def has_zero_transform(node):
    '''Checks for a connected zero_transform.
    '''
    result = False
    if node.hasAttr('zeroTransform'):
        if node.zeroTransform.listConnections():
            result = True
    
    return result
    
def get_zero_transform(node):
    '''Gets the zero_transform connected to the input node.
    '''
    result = None
    if has_zero_transform(node):
        result = node.zeroTransform.listConnections()
    
    return result
    
    