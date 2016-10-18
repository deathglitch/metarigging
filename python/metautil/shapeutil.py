import pymel.core as pm

def create_poly_box(size):
    shape = pm.polyCube(w = size, h = size, d = size)[0]
    return shape