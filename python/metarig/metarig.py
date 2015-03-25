import pymel.core as pm
import metanode
import metautil.rigutil as rigutil
import metautil.miscutil as miscutil

class MetaRig():
    VERSION = 1
    def __init__(self, metaroot):
        self.metarig = metanode.MetaNode().create('metarig', 'metarig', metaroot)
        self.metaroot = metaroot
        
        #all_group
        self.all_group = pm.group(n=self.metaroot.object_type_value.get()+'_all', em=1)
        rigutil.connect_node_to_metanode(self.all_group, self.metarig, 'all_group')
        miscutil.lock_visible_attrs(self.all_group)
        
        #controls
        self.ctrls = pm.group(n='ctrls', em=1)
        rigutil.connect_node_to_metanode(self.ctrls, self.metarig, 'ctrls')
        pm.parent(self.ctrls, self.all_group)
        miscutil.lock_and_hide_attrs(self.ctrls, ['sx', 'sy', 'sz'])
        
        #do_not_touch
        self.dnt_group = pm.group(n='do_not_touch', em=1)
        rigutil.connect_node_to_metanode(self.dnt_group, self.metarig, 'do_not_touch')
        pm.parent(self.dnt_group, self.all_group)
        miscutil.lock_visible_attrs(self.dnt_group)
        
        root_joint = self.metaroot.root_joint.get()
        pm.parent(root_joint, self.dnt_group)
        return
    
    def get_metarig(self):
        #return self.metaroot.listConnections(s=0, d=1, type='network')
        return self.metarig
        
    def get_ctrls_group(self):
        return self.ctrls
        
    def get_do_not_touch_group(self):
        return self.dnt_group
        
    def get_all_group(self):
        return self.all_group