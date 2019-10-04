import pymel.core as pm
import metanode_base as metanode
import metautil

def get_group_skins(node):
    metaroot = metanode.get_meta_root()
    metaanimrender = metanode.get_meta_children(of_type = MetaAnimRender)[0]
    return metaanimrender.get_group_skins()

class MetaAnimRender(metanode.MetaNode):
    VERSION = 1
        
    @staticmethod
    def create(meta_parent):
        metarender = metanode.MetaNode.create(MetaAnimRender.__name__, type = 'MetaAnimRender', parent = None, version = MetaAnimRender.VERSION)
        
        #variant?
        #anim_render?
        #version
        metarender.addAttr('group_skins', dt= 'string')
        #group_skins
        group_skins = pm.group(em=1, n='group_skins')
        group_skins.inheritsTransform.set(0)
        metarender.connect_node_to_metanode(group_skins, 'group_skins')
        
        meta_parent.connect_node_to_metanode(metarender, 'meta_children')

        return metarender
        
    def get_group_skins(self):
        return self.group_skins.listConnections()[0]
