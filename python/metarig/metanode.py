import pymel.core as pm
import metautil.nsutil as nsutil

class MetaNode():
    VERSION = 1
    def __init__(self):
        return
    
    @staticmethod
    def create(name, type, parent = None, version = None):
        node = pm.createNode('network', name=name)
        
        pm.addAttr(node, sn='version', at='double')
        pm.addAttr(node, sn='meta_type', dt='string')
        pm.addAttr(node, sn='meta_parent', dt='string')
        pm.addAttr(node, sn='meta_children', dt='string')
        
        node.meta_type.set(type)
        if not version:
            node.version.set(MetaNode().VERSION)
        if parent:
            parent.meta_children >> node.meta_parent
        
        return pm.PyNode(node)
