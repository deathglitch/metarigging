import pymel.core as pm
import maya.cmds as cmds

import meta_node.node_extentions.block_attributes as block_attributes
import model.blendnode
import metautil.node_attributes as node_attributes
import metautil.lists as lists
import model.mesh


def get_edit_node():
	network_nodes = pm.ls(type=pm.nt.Network)
	for node in network_nodes:
		if node.hasAttr('multi_edit_node'):
			return EditNode(node)
	return

class EditNode(block_attributes.BlockCompoundAttributes):

	def __init__(self, network_node):
		self.network_node = network_node
		block_attributes.BlockCompoundAttributes.__init__(self, self.network_node)

	@classmethod
	def create(cls):
		network_node = block_attributes.BlockCompoundAttributes.create('multi_pose_network')
		network_node.addAttr('multi_edit_node', at='bool')
		return cls(network_node)

	def set_base_blocks(self, base_mesh, edited_pose):
		if not isinstance(base_mesh, pm.nt.Transform):
			base_mesh = pm.PyNode(base_mesh)

		if not isinstance(edited_pose, pm.nt.Transform):
			edited_pose = pm.PyNode(edited_pose)
		if not base_mesh.hasAttr('network_connection'):
			base_mesh.addAttr('network_connection', at='message')
		if not edited_pose.hasAttr('network_connection'):
			edited_pose.addAttr('network_connection', at='message')

		attrs = ['base_mesh', 'edited_pose']
		self.network_node.create_message_block(attrs, 'edit_meshes')

		block = self.network_node.attr('edit_meshes')[0]
		block.base_mesh >> base_mesh.network_connection
		block.edited_pose >> edited_pose.network_connection
		return

	def add_parallel_mesh_block(self, parallel_edit, parallel_single):
		if not isinstance(parallel_edit, pm.nt.Transform):
			parallel_edit = pm.PyNode(parallel_edit)

		if not isinstance(parallel_single, pm.nt.Transform):
			parallel_single = pm.PyNode(parallel_single)

		if not parallel_edit.hasAttr('network_connection'):
			parallel_edit.addAttr('network_connection', at='message')
		if not parallel_single.hasAttr('network_connection'):
			parallel_single.addAttr('network_connection', at='message')

		attrs = ['parallel_edit', 'parallel_single']
		self.network_node.create_message_block(attrs, 'parallel_meshes')

		block = self.network_node.attr('parallel_meshes')[0]
		block.parallel_edit >> parallel_edit.network_connection
		block.parallel_single >> parallel_single.network_connection
		return

	def add_meshes_to_block(self, poses):
		if poses:
			self.network_node.create_message_block(poses, 'multi_poses')
			block = self.network_node.attr('multi_poses')[0]
			for pose in poses:
				if not isinstance(pose, pm.nt.Transform):
					pose = pm.PyNode(pose)
					if not pose.hasAttr('network_connection'):
						pose.addAttr('network_connection', at='message')
				block.attr(str(pose)) >> pose.network_connection
		return

	def add_blendnodes_to_block(self, parallel, blendnode):
		if not isinstance(parallel, pm.nt.BlendShape):
			parallel = pm.PyNode(parallel)
		if not isinstance(blendnode, pm.nt.BlendShape):
			blendnode = pm.PyNode(blendnode)

		if not parallel.hasAttr('network_connection'):
			parallel.addAttr('network_connection', at='message')
		if not blendnode.hasAttr('network_connection'):
			blendnode.addAttr('network_connection', at='message')

		attrs = ['blendnode', 'parallel_blendnode']
		self.network_node.create_message_block(attrs, 'multi_blendnodes')

		block = self.network_node.attr('multi_blendnodes')[0]
		block.parallel_blendnode >> parallel.network_connection
		block.blendnode >> blendnode.network_connection
		return

	def disconnect_base_block(self):
		block = self.network_node.attr('edit_mesh')[0]
		base_mesh = block.base_mesh.get()
		edited_pose = block.edited_pose.get()

		self.network_node.disconnect_block_connections('edit_mesh')

		base_mesh.deleteAttr('network_connection')
		edited_pose.deleteAttr('network_connection')
		return

	def get_base_mesh(self):
		block = self.network_node.attr('edit_meshes')[0]
		base_mesh = block.base_mesh.get()
		return base_mesh

	def get_base_edited_pose(self):
		block = self.network_node.attr('edit_meshes')[0]
		edited_pose = block.edited_pose.get()
		return edited_pose

	def get_blendnode(self):
		block = self.network_node.attr('multi_blendnodes')[0]
		blendnode = block.blendnode.get()
		return blendnode

	def get_parallel_blendnode(self):
		block = self.network_node.attr('multi_blendnodes')[0]
		parallel_blendnode = block.parallel_blendnode.get()
		return parallel_blendnode

	def get_finish_pose(self):
		block = self.network_node.attr('parallel_meshes')[0]
		parallel_edit = block.parallel_edit.get()
		return parallel_edit

	def get_parallel_single(self):
		block = self.network_node.attr('parallel_meshes')[0]
		parallel_single = block.parallel_single.get()
		return parallel_single

	def create_multi_parallel_blend(self, mesh, parallel_live, parallel_diff):
		'''
		Creates a parallel blend shape specifically for the Multi Edit Mode.
		:return PyNode: Returns a blend shape node.
		'''
		parallel_node = lists.first_in_list(pm.blendShape(mesh, parallel_live, parallel_diff, parallel=True, n='parallel_multi_blendshape'))
		parallel_node.weight[0].set(1)
		parallel_node.weight[1].set(1)
		return parallel_node

	def create_blendnode(self, shapes, source):
		blendnode = model.blendnode.BlendShapeNode.create(shapes, source, name='multi_blendshape')
		return blendnode



def enter_multi_edit_mode(base_mesh, edited_mesh, poses):
	node = get_edit_node()
	if node:
		pm.delete(node)

	edit_node = EditNode.create()
	block_attributes.BlockCompoundAttributes.check_attributes(edit_node)

	all_pose = [x for x in poses]
	all_pose.append(edited_mesh)

	blendnode = edit_node.create_blendnode(all_pose, base_mesh)
	for x in xrange(len(all_pose)):
		blendnode.weight[x].set(1)

	parallel_edit = pm.duplicate(base_mesh, name='edit_this_mesh')[0]
	node_attributes.remove_user_attributes(parallel_edit)
	node_attributes.lock_attributes(parallel_edit, lock=False)
	trans_tx = parallel_edit.tx.get()
	parallel_edit.tx.set(trans_tx + 50)

	parallel_single = pm.duplicate(base_mesh, name='see_edit_on_this_mesh')[0]
	node_attributes.remove_user_attributes(parallel_single)
	node_attributes.lock_attributes(parallel_single, lock=False)
	trans_s_tx = parallel_single.tx.get()
	parallel_single.tx.set(trans_s_tx + 100)

	parallel_blendnode = edit_node.create_multi_parallel_blend(base_mesh, parallel_edit, parallel_single)

	for pose in poses:
		blendnode.attr(pose).set(0)

	edit_node.set_base_blocks(base_mesh, edited_mesh)
	edit_node.add_parallel_mesh_block(parallel_edit, parallel_single)
	edit_node.add_blendnodes_to_block(parallel_blendnode, blendnode)
	edit_node.add_meshes_to_block(poses)
	return


def exit_multi_edit_mode():
	node = get_edit_node()
	if node:
		base_mesh = node.get_base_mesh()
		edited_pose = node.get_base_edited_pose()
		new_pose = str(edited_pose)
		poses = node.get_block_connections('multi_poses')
		blendnode = node.get_blendnode()
		parallel_blendnode = node.get_parallel_blendnode()
		parallel_single = node.get_parallel_single()
		finished_pose = model.mesh.Mesh(node.get_finish_pose())

		pose_position = pm.xform(edited_pose, q=True, ws=True, t=True)
		pm.delete(edited_pose)
		user_attrs = map(lambda x: x.split('.')[-1], base_mesh.listAttr(ud=True))
		finished_pose = finished_pose.dup_and_delete(mesh_name=new_pose, lambert_shader=True, remove_attrs=user_attrs)
		finished_pose.translate.set(pose_position)

		node.disconnect_block_connections('edit_meshes')
		node.disconnect_block_connections('multi_blendnodes')
		node.disconnect_block_connections('multi_poses')
		node.disconnect_block_connections('parallel_meshes')

		node_attributes.remove_user_attributes(base_mesh)

		for pose in poses:
			node_attributes.remove_user_attributes(pose)

		pm.delete(node)
		pm.delete(blendnode)
		pm.delete(parallel_blendnode)
		pm.delete(parallel_single)

	return


def cancel_multi_edit_mode():
	node = get_edit_node()
	if node:
		base_mesh = node.get_base_mesh()
		edited_pose = node.get_base_edited_pose()
		poses = node.get_block_connections('multi_poses')
		blendnode = node.get_blendnode()
		parallel_blendnode = node.get_parallel_blendnode()
		parallel_meshes = node.get_block_connections('parallel_meshes')

		node.disconnect_block_connections('edit_meshes')
		node.disconnect_block_connections('multi_blendnodes')
		node.disconnect_block_connections('multi_poses')
		node.disconnect_block_connections('parallel_meshes')

		node_attributes.remove_user_attributes(base_mesh)
		node_attributes.remove_user_attributes(edited_pose)

		for pose in poses:
			node_attributes.remove_user_attributes(pose)

		pm.delete(node)
		pm.delete(blendnode)
		pm.delete(parallel_blendnode)
		pm.delete(parallel_meshes)
	return





