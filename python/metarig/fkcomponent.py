import pymel.core as pm
import component
import keyablecomponent
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class FKComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region,  lock_child_rotate_axes=[], lock_child_translate_axes=['tx', 'ty', 'tz'], lock_root_rotate_axes=[], lock_root_translate_axes=['tx', 'ty', 'tz'], constrain_translate = True, constrain_rotate = True):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        fknode = keyablecomponent.KeyableComponent.create(metanode_parent, FKComponent.__name__, FKComponent.LATEST_VERSION, side, region)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nodetypes.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        
        do_not_touch = fknode.get_do_not_touch()
        ctrls_group = fknode.get_ctrls_group()
        
        fk_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        fk_chain_result = rigging.rig_fk_chain(fk_chain[0], fk_chain[-1])
        
        start_grip = fk_chain_result['grips'][0]
        rigutil.get_zero_transform(start_grip).setParent(ctrls_group)
        fk_chain[0].setParent(do_not_touch)
        do_not_touch.setParent(metanode_parent.get_do_not_touch_group())
        ctrls_group.setParent(metanode_parent.get_ctrls_group())
        
        fknode.connect_ordered_nodes_to_metanode(fk_chain_result['grips'], 'fk_grips')
        fknode.connect_ordered_nodes_to_metanode(fk_chain, 'fk_chain')
        fknode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')
        
        ctrls = fk_chain_result['grips']
        for x in range(len(ctrls)):
            locked_attrs = ['sx', 'sy', 'sz', 'v']
            if x == 0:
                locked_attrs = locked_attrs + lock_root_rotate_axes + lock_root_translate_axes
            elif x > 0:
                locked_attrs = locked_attrs + lock_child_rotate_axes + lock_child_translate_axes

            miscutil.lock_and_hide_attrs(ctrls[x], locked_attrs)
            
        for x, joint in enumerate(fk_chain_result['chain'][:-1]):
            if constrain_translate and constrain_rotate:
                pm.parentConstraint(joint, chain_between[x])
            elif constrain_translate and not constrain_rotate:
                pm.pointConstraint(joint, chain_between[x])
            elif not constrain_translate and constrain_rotate:
                pm.orientConstraint(joint, chain_between[x])
        
        orig_ns.setCurrent()
        
        return fknode
        
 	def get_grips(self):
		grips = self.fk_grips.listConnections()
		grips = map(lambda x: rigging.Grip(x), grips)
		grips.reverse() #this makes the fk root grip control the last in the list
		return grips

	def get_start_grip(self):
		grips = self.get_grips()
		return grips[-1]
		
	def get_end_grip(self):
		grips = self.get_grips()
		return grips[0]
	
	def get_bind_joints(self):
		return self.bind_joints.listConnections()
	
	def select_grips(self):
		pm.select(self.get_grips())
	
	def key_grips(self):
		grips = self.get_grips()
		pm.setKeyframe(grips)
		
	def to_default_pose(self):
		grips = self.get_grips()
		for grip in grips:
			miscutil.reset_attrs(grip)
            
    def attach_to_component(self, attach_component, location, point = True, orient = True):
        attach_component = component.Component(attach_component)
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = self.get_grip_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections(d=0) + grip_group.ty.listConnections(d=0) + grip_group.tz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_point_component
            self.attach_point_location.set(location)
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections(d=0) + grip_group.ry.listConnections(d=0) + grip_group.rz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(parent_node, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            attach_component.attached_components >> self.attach_orient_component
            self.attach_orient_location.set(location)
        miscutil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_joint(self, attach_joint, point = True, orient = True):
        grip_group = self.get_grip_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        miscutil.unlock_and_show_attrs(attrs)
        if point:
            #delete old constraint
            grip_cons = grip_group.tx.listConnections(d=0) + grip_group.ty.listConnections(d=0) + grip_group.tz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipRotate = ["x", "y", "z"])
            #connect attrs
            self.attach_point_location.set(attach_joint.name())
        if orient:
            #delete old constraints
            grip_cons = grip_group.rx.listConnections(d=0) + grip_group.ry.listConnections(d=0) + grip_group.rz.listConnections(d=0)
            for grip_con in grip_cons:
                if pm.objExists(grip_con):
                    pm.delete(grip_con)
            #new constraint
            pm.parentConstraint(attach_joint, grip_group, w=1, mo=1, skipTranslate = ["x", "y", "z"])
            #connect attrs
            self.attach_orient_location.set(attach_joint.name())
        miscutil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_skeleton(self, namespace = None):
        '''Attaches grips to a baked skeleton in the specified namespace'''
        fk_grips = map(lambda x: rigging.Grip(x), self.fk_grips.listConnections())
        bind_joints = self.bind_joints.listConnections()
        if namespace is None:
            namespace = miscutil.get_namespace(bind_joints[0])
        bind_joints = map(lambda x: x.swapNamespace(namespace), bind_joints)

        constraints = []
        for inc in xrange(len(fk_grips)):
            grip = fk_grips[inc]
            jnt = bind_joints[inc]
            const = miscutil.parent_constraint_safe(jnt, grip, 0)
            constraints.append(const)
            
        return [fk_grips, constraints]
        
    def bake_and_detach(self, objects, constraints, attrs = None):
        '''Bakes grips and detaches from baked skeleton.'''
        if not attrs:
            attrs = ["rx", "ry", "rz"]
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, attrs = attrs, time = (start_time, end_time))
        pm.delete(constraints)
        return
        
    def bake_to_skeleton(self):
        bind_joints = self.bind_joints.listConnections()
        start_time = miscutil.get_start_time()
        end_time = miscutil.get_end_time()
        miscutil.bake(objects = objects, time = (start_time, end_time))
        return
        
    def _find_attach_point(self, location):
        if location.lower() == 'start':
            return self.get_bind_joints()[0]
        elif location.lower() == 'mid' or location.lower() == 'middle':
            bind_joints = self.get_bind_joints()
            return bind_joints[len(bind_joints)/2]
        elif location.lower() == 'end':
            end = self.get_bind_joints()[-1]
            return end
        elif location.lower() == 'second_from_last':
            second_from_last = self.get_bind_joints()[-2]
            return second_from_last
        else:
            raise StandardError('location given should be "start", "middle" or "end"')
    
    def remove(self, bake = False):
        '''remove everything about this rig implementation'''
        if bake:
            self.bake_to_skeleton()
        grip_group = self.get_ctrls_group()
        dnt_group = self.get_do_not_touch()
        pm.delete([self, dnt_group, grip_group])
        return