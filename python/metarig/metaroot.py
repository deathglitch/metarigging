import pymel.core as pm
import metanode_base

def get_metaroot(node):
    result = None
    if node:
        node = pm.PyNode(node)
        if is_metaroot(node):
            result = node
    return result
    
def get_top_root(node):
    metaroot = get_metaroot(node)
    return metaroot.get_top_root()

def is_metaroot(node):
    result = None
    if node.hasAttr('meta_type'):
        if node.meta_type.get() == 'metaroot':
            result = node
    return result
    
class MetaRoot(metanode_base.MetaNode):
    VERSION = 1
    
    @staticmethod
    def create(root_joint, object_type, object_type_value, object_id, base_dir, source_file_path):
        metaroot = metanode_base.MetaNode.create(MetaRoot.__name__, type = MetaRoot.__name__, parent = None, version = MetaRoot.VERSION)
        
        pm.addAttr(metaroot, sn='object_type', dt='string')
        pm.addAttr(metaroot, sn='object_type_value', dt='string')
        pm.addAttr(metaroot, sn='base_dir', dt='string')
        pm.addAttr(metaroot, sn='source_file_path', dt='string')
        pm.addAttr(metaroot, sn='object_id', dt='string')
        pm.addAttr(metaroot, sn='root_joint', at='message')
        pm.addAttr(root_joint, sn='metaroot', at='message')
        
        metaroot.version.set(MetaRoot.VERSION)
        metaroot.object_type.set(object_type)
        metaroot.object_type_value.set(object_type_value)
        metaroot.base_dir.set(base_dir)
        metaroot.source_file_path.set(source_file_path)
        metaroot.object_id.set(object_id)
        
        metaroot.meta_parent>>  root_joint.metaroot
        metaroot.root_joint >> root_joint.metaroot
        return metaroot
        
    def get_top_root(self):
        return self.root_joint.listConnections()[0]
