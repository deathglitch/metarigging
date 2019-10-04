import pymel.core as pm
import metarig
import metautil
import os

class GreydudeRig(object):
    LATEST_VERSION = 1
    
    def rig(self, source_file, new_scene = True, ns = 'rig'):
        if new_scene:
            pm.newFile(f=True)
            
        pm.namespace(set=':')
        render_path = os.path.join(metautil.get_project_data_dir(), source_file)
        if render_path:
            metautil.import_into_namespace(render_path, ns)
        root_joint = metautil.find_bone(ns + ':', 'center', 'root')
        # get the metaroot (TODO: if there is none, create the core graph)
        meta_root = metautil.get_metaroot_from_root_joint(root_joint)

        #source_file_path = meta_root.source_file_path.get()
        pm.namespace(set=ns)
        meta_rig = metarig.MetaAnimRig.create(meta_root)
        
        control_group = meta_rig.get_ctrls_group()
        do_not_touch_group = meta_rig.get_do_not_touch_group()
        
        skeleton = pm.listRelatives(root_joint, ad = True, type = pm.nt.Joint)
        
        #components go here
        #cog
        cog_comp = metarig.CogComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_cog_null', end_joint = ns + ':b_cog_null', side = 'center', region = 'cog')
        #pelvis
        pelvis_comp = metarig.ReverseComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_pelvis', end_joint = ns + ':b_spine_1', side = 'center', region = 'root')
        pelvis_comp.attach_to_component(cog_comp, 'end')
        #spine
        spine_comp = metarig.RfkComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_spine_1', end_joint = ns + ':b_neck_1', side = 'center', region = 'spine')
        spine_comp.attach_to_component(pelvis_comp, 'end', point = True, orient = False)
        spine_comp.attach_to_component(cog_comp, 'start', point = False, orient = True)
        #head
        neck_comp = metarig.RfkComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_neck_1', end_joint = ns + ':b_head_null', side = 'center', region = 'head')
        neck_comp.attach_to_component(spine_comp, 'end')
        #left_leg
        left_leg_comp = metarig.ReverseFootComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_l_thigh', end_joint = ns + ':b_l_toe_contact', side = 'left', region = 'leg')
        left_leg_comp.attach_to_component(pelvis_comp, 'start')
        #right_leg
        right_leg_comp = metarig.ReverseFootComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_r_thigh', end_joint = ns + ':b_r_toe_contact', side = 'right', region = 'leg')
        right_leg_comp.attach_to_component(pelvis_comp, 'start')
        #left_clavicle
        left_clavicle_comp = metarig.FKComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_l_clavicle', end_joint = ns + ':b_l_upperarm', side = 'left', region = 'clavicle')
        left_clavicle_comp.attach_to_component(spine_comp, 'end')
        #right_clavicle
        right_clavicle_comp = metarig.FKComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_r_clavicle', end_joint = ns + ':b_r_upperarm', side = 'right', region = 'clavicle')
        right_clavicle_comp.attach_to_component(spine_comp, 'end')
       #left_arm
        left_arm_comp = metarig.FKIKComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_l_upperarm', end_joint = ns + ':b_l_hand_null', side = 'left', region = 'arm', ik_grip_orient = ["x","y"], ik_grip_rotate_order = "yxz")
        left_arm_comp.attach_to_component(left_clavicle_comp, 'end')
        #right_arm
        right_arm_comp = metarig.FKIKComponent.create(metanode_parent = meta_rig, start_joint = ns + ':b_r_upperarm', end_joint = ns + ':b_r_hand_null', side = 'right', region = 'arm', ik_grip_orient = ["x","y"], ik_grip_rotate_order = "yxz")
        right_arm_comp.attach_to_component(right_clavicle_comp, 'end')
        #left_fingers
        left_finger_chains = [ns + ':b_l_thumb_1', ns + ':b_l_index_1', ns + ':b_l_middle_1', ns + ':b_l_ring_1', ns + ':b_l_pinky_1']
        left_fingers = metarig.FKGroupComponent.create(metanode_parent = meta_rig, side = 'left', region = 'fingers', chains = left_finger_chains, grip_group_pivot = left_arm_comp.get_bind_joints()[-1], lock_child_rotate_axes = ['rx', 'ry'], children_zero_transforms=False)
        left_fingers.attach_to_component(left_arm_comp, 'end')
        #right_fingers
        right_finger_chains = [ns + ':b_r_thumb_1', ns + ':b_r_index_1', ns + ':b_r_middle_1', ns + ':b_r_ring_1', ns + ':b_r_pinky_1']
        right_fingers = metarig.FKGroupComponent.create(metanode_parent = meta_rig, side = 'right', region = 'fingers', chains = right_finger_chains, grip_group_pivot = right_arm_comp.get_bind_joints()[-1], lock_child_rotate_axes = ['rx', 'ry'], children_zero_transforms=False)
        right_fingers.attach_to_component(right_arm_comp, 'end')
        
        #examples
        #comp = metarig.FKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        #comp = metarig.IKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        #comp = metarig.FKIKComponent.create(metanode_parent = meta_rig, start_joint = 'rig:b_anim', end_joint = 'rig:b_anim3', side = 'right', region = 'other')
        return meta_rig