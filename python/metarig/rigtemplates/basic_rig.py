import pymel.core as pm
import metarig.metarig as metarig
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import os

def create_basic_rig(source_file, ns = 'rig'):
    pm.newFile(f=1)
    pm.namespace(set=':')
    render_path = os.path.join(miscutil.get_project_data_dir(), source_file)
    if render_path:
        miscutil.import_into_namespace(render_path, ns)
    root_joint = miscutil.find_bone(ns, 'center', 'root')
    metaroot = rigutil.get_metaroot(root_joint)
    #source_file_path = metaroot.source_file_path.get()
    pm.namespace(set=ns)
    rig_object = metarig.MetaRig(metaroot)
    rig = rig_object.get_metarig()
    control_group = rig.get_ctrls_group()
    do_not_touch_group = rig.get_do_not_touch_group()
    
    return
    