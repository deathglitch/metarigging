import pymel.core as pm

import metanode_base
import metautil
import metautil.miscutil as miscutil

class Component(metanode_base.MetaNode):

    @staticmethod
    def create(metanode_parent, metanode_type, version, side, region, component_pivot = None):
        name = '{0}_{1}_{2}'.format('comp', side, region)
        node = metanode_base.MetaNode.create(name = name, type = metanode_type, parent = metanode_parent, version = version)
        #pm.rename(node, '{0}'.format(metautil.get_name_root(node)))
        node.addAttr('side', dt = 'string')
        node.side.set(side)
        node.addAttr('region', dt = 'string')
        node.region.set(region)
        do_not_touch_group = pm.group(em = 1, name = 'DO_NOT_TOUCH_{0}_{1}'.format(side, region))
        if component_pivot:
            miscutil.align(component_pivot, do_not_touch_group)
        pm.makeIdentity(do_not_touch_group, apply=1, t=1, r=1, s=1)
        do_not_touch_group.v.set(0)
        metautil.lock_all_keyable_attrs(do_not_touch_group)
        metanode_parent = metanode_base.MetaNode(metanode_parent)
        if metanode_parent.get_type() == 'MetaAnimRig':
            do_not_touch_group.setParent(metanode_parent.get_do_not_touch_group())
        node.connect_node_to_metanode(do_not_touch_group, 'do_not_touch')
        node.addAttr('attached_components', dt = 'string')
        node.addAttr('attach_point_component', at = 'message')
        node.addAttr('attach_orient_component', at = 'message')
        node.addAttr('attach_point_location', dt = 'string')
        node.addAttr('attach_orient_location', dt = 'string')
        return node
        
    def get_child_components(self):
        nodes = self.attachedComponents.listConnections()
        components = map(lambda x: metanode_base.MetaNode(x), nodes)
        return components
        
    def get_attach_point_component(self):
        result = None
        parent = self.attachPointComponent.listConnections()
        if parent:
            result = metanode_base.MetaNode(parent[0])
        return result
        
    def get_attach_orient_component(self):
        result = None
        parent = attachOrientComponent.listConnections()
        if parent:
            result = metanode_base.MetaNode(parent[0])
        return result
        
    def get_attach_point_location(self):
        result = None
        point = self.attach_point_location.get()
        if point:
            result = point
        '''
        parent = attachPointLocation.listConnections()
        if parent:
            result = metanode_base.MetaNode(parent[0])
        '''
        return result
    
    def get_attach_orient_location(self):
        result = None
        orient = self.attach_orient_location.get()
        if orient:
            result = orient
        '''
        parent = attachOrientLocation.listConnections()
        if parent:
            result = metanode_base.MetaNode(parent[0])
        '''
        return result
        
    def get_side(self):
        return self.side.get()
        
    def get_region(self):
        return self.region.get()
        
    def get_component(self, side, region):
        result = None
        if str(self.get_side()).strip().lower() == str(side).strip().lower() and str(self.get_region()).strip().lower() == str(region).strip().lower():
            result = self
    
        return result
        
    def get_do_not_touch(self):
        return self.do_not_touch.listConnections()[0]