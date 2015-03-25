import pymel.core as pm
import metanode

class MetaRoot():
    VERSION = 1
    def __init__(self, root_joint, object_type, object_type_value, object_id, base_dir, source_file_path):
        self.metaroot = metanode.MetaNode().create('metaroot', 'metaroot')
        
        pm.addAttr(self.metaroot, sn='object_type', dt='string')
        pm.addAttr(self.metaroot, sn='object_type_value', dt='string')
        pm.addAttr(self.metaroot, sn='base_dir', dt='string')
        pm.addAttr(self.metaroot, sn='source_file_path', dt='string')
        pm.addAttr(self.metaroot, sn='object_id', dt='string')
        pm.addAttr(self.metaroot, sn='root_joint', at='message')
        pm.addAttr(root_joint, sn='metaroot', at='message')
        
        self.metaroot.version.set(self.VERSION)
        self.metaroot.object_type.set(object_type)
        self.metaroot.object_type_value.set(object_type_value)
        self.metaroot.base_dir.set(base_dir)
        self.metaroot.source_file_path.set(source_file_path)
        self.metaroot.object_id.set(object_id)
        
        root_joint.metaroot >> self.metaroot.meta_parent
        self.metaroot.root_joint >> root_joint.metaroot
        return
    
    def get_metaroot(self):
        return self.metaroot