import pymel.core as pm
import metarig
import metautil
import metanode_base as metanode

class MetaAnimRig(metanode.MetaNode):
    VERSION = 1
        
    @staticmethod
    def create(metaroot):
        #set namespace
        #orig_ns = pm.Namespace.getCurrent()
        #ns = metautil.get_namespace_object(metaroot)
        #ns.setCurrent()
    
        meta_rig = metanode.MetaNode.create(MetaAnimRig.__name__, type = 'MetaAnimRig', parent = None)
        #self.metaroot = metaroot
        metaparent = metanode.MetaNode(metaroot)
        
        #all_group
        all_group = pm.group(n=metaroot.object_type_value.get()+'_all', em=1)
        meta_rig.connect_node_to_metanode(all_group, meta_rig, 'all_group')
        metautil.lock_visible_attrs(all_group)
        
        #controls
        ctrls = pm.group(n='ctrls', em=1)
        meta_rig.connect_node_to_metanode(ctrls, meta_rig, 'ctrls')
        pm.parent(ctrls, all_group)
        metautil.lock_and_hide_attrs(ctrls, ['sx', 'sy', 'sz'])
        
        #do_not_touch
        dnt_group = pm.group(n='do_not_touch', em=1)
        meta_rig.connect_node_to_metanode(dnt_group, meta_rig, 'do_not_touch')
        pm.parent(dnt_group, all_group)
        metautil.lock_visible_attrs(dnt_group)
        
        #group_skins
        group_skins = metaparent.get_meta_children(of_type=metarig.MetaAnimRender)[0].get_group_skins()
        pm.parent(group_skins, all_group)
        metautil.lock_visible_attrs(group_skins)
        
        root_joint = metaroot.root_joint.get()
        pm.parent(root_joint, dnt_group)
        
        meta_rig.connect_node_to_metanode(pm.PyNode(meta_rig), metaroot, 'meta_children')
        
        #restore namespace
        #orig_ns.setCurrent()
        return meta_rig
    
    def get_metarig(self):
        #return self.metaroot.listConnections(s=0, d=1, type='network')
        return self.meta_rig
        
    def get_ctrls_group(self):
        return self.ctrls
        
    def get_do_not_touch_group(self):
        return self.dnt_group
        
    def get_all_group(self):
        return self.all_group
        
    def get_grips(self):
		all_grips = pm.ls(self.namespace()+'*.isGrip', objectsOnly=True)
		return [rigging.Grip(grip) for grip in all_grips]
        
    def finalize(self):
        #display layer hookup
        return