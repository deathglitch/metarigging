import pymel.core as pm
import metanode_base
import component

class KeyableComponent(component.Component):

    @staticmethod
    def create(metanode_parent, metanode_type, version, side, region):
        metanode_base.MetaNode(metanode_parent)
        side = side.lower()
        node = component.Component.create(metanode_parent, metanode_type, version, side, region)
        ctrls_group = pm.group(em=1, n='ctrls_{0}_{1}'.format(side, region))
        pm.makeIdentity(ctrls_group, apply=1, t=1, r=1, s=1)
        node.connect_node_to_metanode(ctrls_group, 'ctrls')
        if metanode_parent.get_type() == 'MetaAnimRig':
            ctrls_group.setParent(metanode_parent.get_ctrls_group()) #needs to be a super at some point
        return node
        
    def get_ctrls_group(self):
        return self.ctrls.listConnections()[0]