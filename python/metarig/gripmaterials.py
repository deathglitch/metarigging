import pymel.core as pm
import metanode_base as metanode
import metautil

class GripMaterials(metanode.MetaNode):
    VERSION = 1
    
    @staticmethod
    def create(parent):
       
        grip_materials = metanode.MetaNode.create( GripMaterials.__name__, "GripMaterials", parent = parent, version = GripMaterials.VERSION )

        grip_materials.addAttr('centerGripMaterial', dt='string')
        grip_materials.addAttr('rightGripMaterial', dt='string')
        grip_materials.addAttr('leftGripMaterial', dt='string')
        grip_materials.addAttr('cogGripMaterial', dt='string')
        grip_materials.addAttr('detailGripMaterial', dt='string')

        grip_materials.addAttr('centerWireframeColor', at='long')
        grip_materials.setAttr('centerWireframeColor', 6)
        
        grip_materials.addAttr('rightWireframeColor', at='long')
        grip_materials.setAttr('rightWireframeColor', 12)
        
        grip_materials.addAttr('leftWireframeColor', at='long')
        grip_materials.setAttr('leftWireframeColor', 27)
        
        grip_materials.addAttr('cogWireframeColor', at='long')
        grip_materials.setAttr('cogWireframeColor', 22)
        
        grip_materials.addAttr('detailWireframeColor', at='long')
        grip_materials.setAttr('detailWireframeColor', 30)
        
        grip_materials.addAttr('gripTransparency', at='float')
        grip_materials.setAttr('gripTransparency', 0.75)
        
        
        grip_materials.refresh_grip_materials()
        
        return grip_materials


    def refresh_grip_materials(self):
        
        grip_materials = []
        grip_materials.append(self.create_grip_material( 'center', [0.4, 0.4, 1], [0, 0, 0.2]))
        grip_materials.append(self.create_grip_material( 'right', [0.9, 0.3, 0.3], [0.25, 0, 0]))
        grip_materials.append(self.create_grip_material( 'left', [0, 0.4, 0],  [0, 0.25, 0]))
        grip_materials.append(self.create_grip_material( 'cog', [1, 1, 0],  [0.35, 0.35, 0]))
        grip_materials.append(self.create_grip_material( 'detail', [0.4, 0, 0.8],  [0.1, 0, 0.25]))
        
        for grip_material in grip_materials:
			self.gripTransparency >> grip_material.transparencyR
			self.gripTransparency >> grip_material.transparencyG
			self.gripTransparency >> grip_material.transparencyB
            
        anim_rig = self.get_metanode_parent() 
        all_grips = anim_rig.get_grips()
        print 'all grips = {0}'.format(all_grips[0])
        
        
    def create_grip_material(self, label, color, incandescence):
        
        ns = pm.namespaceInfo(cur=True)
        rig_ns = metautil.get_namespace(self.pynode)
        pm.namespace(set=':')
        pm.namespace(set=rig_ns)
        
        grip_material = pm.shadingNode('lambert', name='{0}GripMaterial'.format(label), asShader=True)
        grip_material_sg = pm.sets(renderable=True, noSurfaceShader=True, empty=True, name='{0}GripSG'.format(label))
        grip_material.outColor >> grip_material_sg.surfaceShader
        
        pm.namespace(set=ns)

        self.connect_node_to_metanode(grip_material, self.pynode, '{0}GripMaterial'.format(label))
        self.set_grip_colors(label, color, incandescence)
        
        #print 'created grip material {0}'.format(grip_material)
        return grip_material

        
    def set_grip_colors(self, label, color, incandescence):
        
        grip_material = self.get_grip_material_by_label(label)
        grip_material.setAttr('color',color)
        grip_material.setAttr('incandescence', incandescence)
        
        
    def get_grip_material_by_label(self, label):
        '''Gets the connected grip material of the given label.
        '''
        grip_material = None
        labelAttr = '{0}GripMaterial'.format(label)
        grip_material = pm.listConnections('{0}.{1}'.format(self.pynode, labelAttr))[0]
        print('getting grip material {0}'.format(grip_material))
        return grip_material
        
        


