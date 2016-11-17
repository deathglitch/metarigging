import pymel.core as pm
import component

class TwistFixupComponent(component.Component):
    '''A component for automatic twist control, useful for shoulders, wrists, etc.
    Example inputs:
        parent_joint = shoulder - requires a grandparent_joint = clavicle
        child_joint = elbow
    A driver joint chain is created using singleChainIK to lock rotations to grandparent
    After creating the twist joint driver, connect any number of twist joints using connect_weighted_twist_joint()
    '''
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, metanode_type, version, side, region, parent_joint, child_joint):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        twist_fixup_node = component.Component.create(metanode_parent, TwistFixupComponent.__name__, TwistFixupComponent.LATEST_VERSION, side, region)
        do_not_touch = twist_fixup_node.get_do_not_touch()
        name_root = '{0}_{1}'.format(side, region)
        
        #create driver twist joint chain
        pm.select(parent_joint)
        twist_joint_driver = pm.joint(n=name_root)
        pm.select(parent_joint)
        twist_joint_driver_null = pm.joint(n='{0}_null'.format(name_root))
        
        twist_joint_driver.translate.set(child_joint.translate.get())
        twist_joint_driver_null.setParent(twist_joint_driver)
        
        ik_handle, ik_effector = pm.ikHandle( sj=twist_joint_driver, ee=twist_joint_driver_null, n='{0}_ikHandle'.format(name_root))
        
        do_not_touch.setParent(parent_joint)
        do_not_touch.translate.set([0,0,0])
        do_not_touch.rotate.set([0,0,0])
        do_not_touch.setParent('rea:doNotTouch')
        
        #twist_joint_driver.setParent(dnt_group)
        #pm.parentConstraint(parent_joint, twist_joint_driver, mo=True) #might want to go back to constraints instead of parenting
        twist_joint_driver.setParent(parent_joint)
        ik_handle.setParent(parent_joint.getParent())
        ik_effector.setParent(twist_joint_driver)
        #pm.parentConstraint(parent_joint.getParent(), ik_handle[0], mo=True)
        
        #connect to metanode
        twist_fixup_node.connect_node_to_metanode( twist_joint_driver, 'twist_joint_driver')
        twist_fixup_node.connect_node_to_metanode( ik_handle, 'ik_handle')
        
        orig_ns.setCurrent()
        
        return twist_joint_driver
        
        
    def connect_weighted_twist_joint(self, twist_joint, weight):
        twist_joint_driver = get_twist_joint_driver()
        
        name_root = twist_joint.stripNamespace()
        twist_interface = pm.group(em=True, n='{0}_twistInterface'.format(name_root))
        dnt_group = self.get_do_not_touch()
        
        multiply_node = pm.createNode('multiplyDivide', n='{0}_multiplyDivide'.format(name_root))
        twist_joint_driver.rx >> multiply_node.input1X
        multiply_node.outputX >> twist_interface.rx
        multiply_node.input2X.set(weight)
        orientConstraint(twist_interface, twist_joint, sk=['z','y'], mo=False)
        
        #how to connect multiple twist joints?
        #probably use a multi attr and add based on length
        
        
    def get_twist_joint_driver(self):
        twist_joint_driver = self.listConnections.twist_joint_driver[0]
        return twist_joint_driver
        
        
        
        
        