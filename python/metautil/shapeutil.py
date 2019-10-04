import pymel.core as pm

def create_poly_box(size):
    shape = pm.polyCube(w = size, h = size, d = size)[0]
    return shape
    
def create_poly_shape_switch(size=1, forward_axis='z'):
    shape = pm.polySphere(r=0.5, sx=4, sy=3, ax=[0, 1, 0], cuv=2, ch=0)[0]
    
    pm.move('{0}.vtx[9]'.format(shape), [0, 2.743627, 0],  r=True, os=True, wd=True)
    pm.move('{0}.vtx[0:7]'.format(shape), [0, 2.743627, 0],  r=True, os=True, wd=True)
    pm.move('{0}.vtx[0:3]'.format(shape), [0, 0.255652, 0], r=True, os=True, wd=True)
    pm.scale('{0}.vtx[0:3]'.format(shape), [0.165043, 0.165043, 0.165043], r=True, p=(0, 2.74928, 0))
    pm.move('{0}.vtx[8]'.format(shape), 0, 0, 0)
    
    if forward_axis == '-x': pm.rotate(shape, 0, 0, -90)
    elif forward_axis == 'x': pm.rotate(shape, 0, 0, 90)
    elif forward_axis == '-z': pm.rotate(shape, 90, 0, 0)
    elif forward_axis == 'z': pm.rotate(shape, -90, 0, 0)
        
    pm.scale(shape, [size, size, size])
    pm.makeIdentity(shape, apply=True, t=1, r=1, s=1, n=0)
    return shape

def create_poly_shape_pv(size=1):
    shape = pm.polySphere(r=1, sx=8, sy=6, axis=[0, 1, 0,], cuv=2 ,ch=0, n="gr_pv_control_shape")[0]
    
    pm.scale(shape, [size, size, size])
    pm.makeIdentity(shape, apply=True, t=1, r=1, s=1, n=0)
    return shape
    
def create_poly_shape_cog(size=50, forward_axis='z'):
    shape = pm.polyTorus(r=1, sectionRadius = 0.02, twist = 0, sx = 48, sy = 3, axis=[1,0,0], cuv=1, ch=0, n = "gr_cog_control_shape")[0]
    pm.select('{0}.vtx[47]'.format(shape), '{0}.vtx[95]'.format(shape), '{0}.vtx[143]'.format(shape))
    pm.move([0, -0.2, 0], r=True, os=True, wd=True)
    pm.select(cl=True)
    
    if forward_axis == '-x': pm.rotate(shape, 0, 0, -90)
    elif forward_axis == 'x': pm.rotate(shape, 0, 0, 90)
    elif forward_axis == '-z': pm.rotate(shape, 90, 0, 90)
    elif forward_axis == 'z': pm.rotate(shape, -90, 0, 90)
    
    pm.scale(shape, [size, size, size])
    pm.makeIdentity(shape, apply=True, t=1, r=1, s=1, n=0)
    return shape