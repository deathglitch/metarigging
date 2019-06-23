import pymel.core as pm
import maya.mel as mel

import model.blendnode

# set up blend shape
def paint_weight_pose(base_mesh, pose_mesh, open_weights_tool=True):
	'''
	Create a blendshape that allows the user to paint one pose onto another.
	:param PyNode base_mesh: The mesh that is the source. It is used to paint onto the other mesh.
	:param PyNode pose_mesh: The mesh that is the target.  The base mesh gets painted onto this mesh.
	:param bool open_weights_tool: Opens the maya blendshape weight tool
	:return:
	'''
	# create network
	network_node = paint_weight_network.create()

	blendnode = model.blendnode.BlendShapeNode.create(base_mesh, pose_mesh)
	blendnode.attr(base_mesh).set(1)

	blendnode.addAttr('network_pbs', at='message')
	base_mesh.addAttr('network_pbs', at='message')
	pose_mesh.addAttr('network_pbs', at='message')

	network_node.connect_meshes(base_mesh, pose_mesh)
	network_node.connect_blendnode(blendnode)

	blendnode.set_weights(pose_mesh)
	pm.select(pose_mesh)
	if open_weights_tool:
		mel.eval('ArtPaintBlendShapeWeightsToolOptions')

	return


def paint_weight_pose_finish(pose_name):
	# quit maya paint tool
	meta_node = get_paint_weight_network()
	if meta_node:
		new_pose = meta_node.new_pose(pose_name=pose_name)
		if new_pose.hasAttr('network_pbs'):
			new_pose.deleteAttr('network_pbs')
		meta_node.remove_attrs()
		meta_node.delete_blendnode()
		meta_node.delete()
		return new_pose
	new_pose=None
	if meta_node:
		new_pose = meta_node.new_pose(pose_name=pose_name)
		meta_node.remove_attrs()
		meta_node.delete_blendnode()
		meta_node.delete()
	return new_pose


def cancel_paint_weight_pose():
	meta_node = get_paint_weight_network()
	if meta_node:
		meta_node.remove_attrs()
		meta_node.delete_blendnode()
		meta_node.delete()

def reset_scene():
	meshes = pm.ls(type=pm.nt.Transform)
	meta_node = get_paint_weight_network()
	mesh_count = 0
	meta_found = False
	for x in meshes:
		if x.hasAttr('network_pbs'):
			mesh_count+=1
			x.deleteAttr('network_pbs')
	if meta_node:
		meta_node.delete()
		meta_found = True

	meta_str = 'No Meta Node found.'
	if meta_found:
		meta_str = 'Meta Node was found and deleted.'

	message = '{0} meshes were cleaned.  {1}'.format(mesh_count, meta_str)

	pm.confirmDialog(t='Reset Scene', message=message)


############################################################################

def get_paint_weight_network():
	networks = pm.ls(type=pm.nt.Network)
	for node in networks:
		if node.hasAttr('is_paint_weight_network') and node.is_paint_weight_network.get():
			return paint_weight_network(node)

class paint_weight_network:
	VERSION = 1.0

	def __init__(self, network_node):
		if not isinstance(network_node, pm.nt.Network):
			network_node = pm.PyNode(network_node)
		self.network_node = network_node

	@classmethod
	def create(cls, name='paint_weight_network_node'):
		network_node = pm.createNode('network', name=name)
		network_node.addAttr('meta_type', dt='string')
		network_node.addAttr('version', at='double')
		network_node.addAttr('is_paint_weight_network', at='bool')
		network_node.addAttr('base_mesh', at='message')
		network_node.addAttr('pose_mesh', at='message')
		network_node.addAttr('paint_blendnode', at='message')

		network_node.meta_type.set(paint_weight_network.__name__)
		network_node.version.set(paint_weight_network.VERSION)
		network_node.is_paint_weight_network.set(True)
		pm.lockNode(network_node, lock=True)
		return cls(network_node)

	def connect_meshes(self, base_mesh, pose_mesh):
		if not base_mesh.hasAttr('network_pbs'):
			base_mesh.addAttr('network_pbs', at='message')
		if not pose_mesh.hasAttr('network_pbs'):
			pose_mesh.addAttr('network_pbs', at='message')
		self.network_node.base_mesh >> base_mesh.network_pbs
		self.network_node.pose_mesh >> pose_mesh.network_pbs

	def connect_blendnode(self, blendnode):
		if not blendnode.hasAttr('network_pbs'):
			blendnode.addAttr('network_pbs', at='message')
		self.paint_blendnode >> blendnode.network_pbs

	def get_base_mesh(self):
		return self.network_node.base_mesh.get()

	def get_pose_mesh(self):
		return self.network_node.pose_mesh.get()

	def get_blendnode(self):
		return self.network_node.paint_blendnode.get()

	def remove_attrs(self):
		base_mesh = self.get_base_mesh()
		pose_mesh = self.get_pose_mesh()
		base_mesh.deleteAttr('network_pbs')
		pose_mesh.deleteAttr('network_pbs')

	def delete_blendnode(self):
		blendnode = self.get_blendnode()
		pm.delete(blendnode)

	def new_pose(self, pose_name):
		pose_mesh = self.pose_mesh.get()
		new_pose = pm.duplicate(pose_mesh, n=pose_name)[0]
		return new_pose

	def delete(self):
		pm.lockNode(self.network_node, lock=False)
		pm.delete(self.network_node)

	def __str__(self):
		return self.network_node.__str__()

	def __getattr__(self, attrname):
		if attrname == 'pynode':
			raise AttributeError("this instance of {0} has no pynode".format(self.__class__.__name__))
		return getattr(self.network_node, attrname)

	def __melobject__(self):
		return self.network_node.__melobject__()

	def __repr__(self):
		return self.network_node.__repr__()





