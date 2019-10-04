import pymel.core as pm
import component
import keyablecomponent
import metautil
import metautil.nsutil as nsutil
import metautil.miscutil as miscutil
import metautil.rigutil as rigutil
import rigging

class ReverseComponent(keyablecomponent.KeyableComponent):
    LATEST_VERSION = 1
    
    @staticmethod
    def create(metanode_parent, start_joint, end_joint, side, region, translate=True):
        orig_ns = pm.Namespace.getCurrent()
        new_ns = nsutil.get_namespace_object(metanode_parent)
        new_ns.setCurrent()
        
        reversenode = keyablecomponent.KeyableComponent.create(metanode_parent, ReverseComponent.__name__, ReverseComponent.LATEST_VERSION, side, region, component_pivot = start_joint)
        chain_between = miscutil.get_nodes_between(start_joint, end_joint, criteria = lambda x: isinstance(x, pm.nodetypes.Joint))
        
        #metanode_root = metaroot.get_metaroot(metanode_parent)
        
        do_not_touch = reversenode.get_do_not_touch()
        ctrls_group = reversenode.get_ctrls_group()
        
        reverse_chain = rigging.create_duplicate_chain(start_joint, end_joint)
        reverse_chain_result = rigging.rig_reverse_chain(reverse_chain[0], reverse_chain[-1])
        
        grip = reverse_chain_result['grips']
        rotate_joint = reverse_chain_result['rotate_joint']
        #rigutil.get_zero_transform(grip).setParent(ctrls_group)
        reverse_chain[0].setParent(do_not_touch)
        grip.setParent(ctrls_group)
        rotate_joint.setParent(do_not_touch)
        #do_not_touch.setParent(metanode_parent.get_do_not_touch_group())
        #ctrls_group.setParent(metanode_parent.get_ctrls_group())
        reversenode.connect_node_to_metanode(grip, 'grip')
        reversenode.connect_node_to_metanode(rotate_joint, 'rotate_joint')
        reversenode.connect_ordered_nodes_to_metanode(chain_between[:-1], 'bind_joints')
        
        if translate:
            miscutil.lock_and_hide_attrs(grip, ['sx', 'sy', 'sz', 'v'])
        else:
            miscutil.lock_and_hide_attrs(grip, ['tx', 'ty', 'tz', 'sx', 'sy', 'sz', 'v'])
            
        for base_joint, reverse_joint in zip(chain_between, reverse_chain)[:-1]:
            pm.parentConstraint(reverse_joint, base_joint, w=1)
        
        orig_ns.setCurrent()
        
        return reversenode
        
    def get_grips(self):
        grips = self.grips.listConnections()
        grips = map(lambda x: rigging.Grip(x), grips)
        grips.reverse() #this makes the fk root grip control the last in the list
        return grips

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
        #attach_component = component.Component(attach_component)
        if not isinstance(attach_component, component.Component):
            raise StandardError("can't connect to metanode, {0}, it is not a component".format(attach_component))
        parent_node = attach_component._find_attach_point(location)
        grip_group = self.get_ctrls_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        metautil.unlock_and_show_attrs(attrs)
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
        grip_group = self.get_ctrls_group()
        attrs = grip_group.translate.children() + grip_group.rotate.children()
        metautil.unlock_and_show_attrs(attrs)
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
        metautil.lock_and_hide_attr_objects(attrs)
        return
        
    def attach_to_skeleton(self, namespace = None):
        '''Attaches grips to a baked skeleton in the specified namespace'''
        grip = map(lambda x: rigging.Grip(x), self.grips.listConnections())
        bind_joints = self.bind_joints.listConnections()
        if namespace is None:
            namespace = miscutil.get_namespace(bind_joints[0])
        bind_joints = map(lambda x: x.swapNamespace(namespace), bind_joints)

        constraints = [pm.orientConstraint(bind_joints[0], grip, w=1)]
        align_grp = pm.group(em=1)
        miscutil.align(self.get_bind_joints()[0], align_grp)
        grip_const = pm.parentConstraint(align_grp, grip, w=1, mo=1)
        align_const = pm.parentConstraint(bind_joints[0], align_grp, w=1)
        constraints += [flag_const, align_const, align_grp]
            
        return [grip, constraints]
        
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
        elif location.lower() == 'end':
            end = self.rotate_joint.listConnections()[0]
            return end
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