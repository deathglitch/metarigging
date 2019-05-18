import pymel.core as pm
import metarig
import metautil
import os

class SimpleRig(object):
    LATEST_VERSION = 1
    
    def rig(self, source_file, new_scene = True, ns = 'rig'):
        if new_scene:
            pm.newFile(f=True)
            
        pm.namespace(set=':')
        render_path = os.path.join(metautil.get_project_data_dir(), source_file)
        if render_path:
            metautil.import_into_namespace(render_path, ns)
        root_joint = metautil.find_bone(ns, 'center', 'root')
        meta_root = metautil.get_metaroot_from_root_joint(root_joint)

        #source_file_path = meta_root.source_file_path.get()
        pm.namespace(set=ns)
        meta_rig = metarig.MetaAnimRig.create(meta_root)
        
        control_group = meta_rig.get_ctrls_group()
        do_not_touch_group = meta_rig.get_do_not_touch_group()
        
        skeleton = pm.listRelatives(root_joint, ad = True, type = pm.nt.Joint)
        
        #components go here
        #comp = metarig.FKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        #comp = metarig.IKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        #comp = metarig.FKIKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        return meta_rig