import pymel.core as pm
import metarig
import metautil
import os

def create_basic_rig(source_file, ns = 'rig'):
    pm.newFile(f=1)
    pm.namespace(set=':')
    render_path = os.path.join(metautil.get_project_data_dir(), source_file)
    if render_path:
        metautil.import_into_namespace(render_path, ns)
    root_joint = metautil.find_bone(ns, 'center', 'root')
    metaroot = metautil.get_metaroot_from_root_joint(root_joint)

    #source_file_path = metaroot.source_file_path.get()
    pm.namespace(set=ns)
    rig_object = metarig.MetaAnimRig.create(metaroot)
    print 'rig_object', rig_object
    #rig = rig_object.get_metarig()
    #control_group = rig.get_ctrls_group()
    #do_not_touch_group = rig.get_do_not_touch_group()
    
    #rig_object.finalize()
    pm.namespace(set=':')
    
    return rig_object
    