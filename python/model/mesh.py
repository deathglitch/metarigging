''' Face: Blend Shape Mesh connected to the rig. '''

#system global imports

#Bungie C# library imports
#software specific imports
import pymel.core as pm
import maya.cmds as cmds
import os

#Bungie python imports
import model.blendnode
import metautil.node_attributes
import metautil.lists

class Mesh(object):
	'''This is a mesh that is a blendshape.  Does not need to be connected to the rig.'''
	def __init__(self, mesh):
		self.mesh = pm.PyNode(mesh)
		self.blendnode = None
		self.blendnodes = []
		self.parallel_node = None

	@classmethod
	def create(cls, mesh):
		'''
		creates an instance of the class using either the base mesh or the source mesh.
		:param object mesh: Creates an instance of BlendShapeModel to extend the mesh.
		:return BlendShapeModel: Returns an instance of BlendShapeModel represented as the mesh.
		'''
		mesh = pm.PyNode(mesh)

		return cls(mesh)

	def get_string_name(self, include_namespace=False):
		if not include_namespace and ':' in self.mesh.nodeName():
			string_mesh = (self.mesh.nodeName()).split(':')[-1]
		else:
			return self.mesh.nodeName()
		return string_mesh

	def duplicate_mesh(self, mesh_name, remove_attrs=(), lambert_shader=False):
		'''
		Duplicates the head mesh and deletes the attribute that gets connected to the network node for the head mesh.
		:param string mesh_name:  The name of the newly created mesh.
		:param list remove_attrs: removes attrs that are on the opposite mesh.  The opposite mesh is duplicated from the base mesh.
		:param bool lambert_shader: Apply a basic lambert shader.
		:return class instance:
		'''
		duplicate_mesh = pm.duplicate(self.mesh, n=mesh_name)[0]
		self.lock_mesh(duplicate_mesh, lock=False)
		for attr in remove_attrs:
			if duplicate_mesh.hasAttr(attr):
				duplicate_mesh.deleteAttr(attr)
		if lambert_shader:
			self.create_material(duplicate_mesh)
		return Mesh(duplicate_mesh)

	def dup_and_delete(self, mesh_name=None, lambert_shader=False, remove_attrs=()):
		'''
		Duplicates its self and deletes the old copy. It renames it's self to the original.
		:param string mesh_name:
		:param list remove_attrs: removes attrs that are on the opposite mesh.  The opposite mesh is duplicated from the base mesh.
		:param bool lambert_shader: Apply a basic lambert shader.
		:return: object wrapped in an instance of the class
		'''
		if not mesh_name:
			pose_name = str(self.mesh)
		pm.rename(self.mesh, 'temp_mesh_DELETE')
		duplicate_mesh = pm.duplicate(self.mesh, n=mesh_name)[0]
		for attr in remove_attrs:
			if duplicate_mesh.hasAttr(attr):
				duplicate_mesh.deleteAttr(attr)

		self.lock_mesh(duplicate_mesh, lock=False)
		if lambert_shader:
			self.create_material(duplicate_mesh)
		pm.delete(self.mesh)
		return Mesh(duplicate_mesh)

	def mirror(self, opposite_pose, base_mesh, skip_dialog=False):
		'''
		Mirrors the mesh.
		:param object base_mesh: The base head mesh.
		:return: Opposite mesh that is wrapped in an instance of the class
		'''
		if base_mesh and opposite_pose:

			# locked attributes
			locked_attrs = metautil.node_attributes.get_lock_attributes(base_mesh)
			metautil.node_attributes.lock_attributes(base_mesh, lock=False)

			# target mesh is the one that will recieve the blendshape and be mirrored
			target = pm.duplicate(base_mesh, returnRootsOnly=1, name='target')
			# the invShape mesh is the one that will be the final inverted blenshape
			invShape = pm.duplicate(base_mesh, returnRootsOnly=1, name='invShape')

			# create our blendshape, mirror the mesh, create the wrap deformer, and apply the blendshape
			bs = pm.blendShape(self.mesh, target)
			pm.xform(target, s=(-1, 1, 1))
			pm.select(invShape[0], target[0], add=1)

			cmds.CreateWrap()
			# wrap = pm.deformer(invShape[0], target[0], type=pm.nt.Wrap)
			# "inflate" our mesh to the correct mirrored position using our blendshape. BIG calculation
			pm.setAttr(bs[0] + "." + str(self.mesh), 1)

			hist = pm.listHistory(invShape)
			index = hist.index(target[0] + "BaseShape")
			# delete the history on our final shape so that we can delete the shape we used to make it
			pm.delete(invShape, constructionHistory=1)

			pm.select(target[0] + "BaseShape")
			x = pm.pickWalk(d="up")
			# delete our base shape node
			pm.delete(x)

			# delete our target shape so we're just left with the shape we want
			pm.delete(target)

			opposite_str = str(opposite_pose)
			if pm.objExists(opposite_pose):
				pm.delete(opposite_pose)
			opposite_pose = Mesh(pm.rename(invShape, opposite_str), skip_dialog)

			metautil.node_attributes.lock_attributes_dict(base_mesh, locked_attrs)

			return opposite_pose
		return

	def mirror_separate_mesh(self, opposite_name, mirror_axis='sx', remove_attrs=(), lambert_shader=False):
		'''
		Mirrors a separate mesh.  Example Mirror left eyelash mesh to right eyelash mesh.
		:param string opposite_name: name of the opposite mesh
		:param string mirror_axis: which axis the mirror should happen.
		:param string remove_attrs: any attributes that need to be removed.
		:param bool lambert_shader: connect a default shader
		:return:
		'''
		mirror_mesh = pm.duplicate(self.mesh, name=str(opposite_name))[0]
		mirror_attr = pm.PyNode(str(mirror_mesh)+'.'+mirror_axis)
		mirror_attr.set(-1)
		pm.makeIdentity(mirror_mesh, apply=True, t=False, r=False, s=True, n=0, pn=1)
		for attr in remove_attrs:
			if mirror_mesh.hasAttr(attr):
				mirror_mesh.deleteAttr(attr)
		if lambert_shader:
			self.create_material(mirror_mesh)
		return Mesh(mirror_mesh)

	def create_blendnode(self, parameters, using_parameter=True, name='blendshape_node'):
		'''
		Creates the blend Shape node that connects all the shapes to the base head.
		:param list parameters: list of class instances for the parameter data.
		:param bool using_parameter: if True, it uses face parameters. False uses a list of shape names.
		:param string name: name of the blend shape node.
		:return BlendShapeNode:  Returns the blend shape node.
		'''
		shapes = []
		if using_parameter:
			for parameter in parameters:
				pose_name = parameter.get_name()
				if pm.objExists(pose_name):
					shapes.append(pose_name)
		else:
			shapes = parameters
		if shapes:
			self.blendnode = pm.blendShape(shapes, self.mesh, n=name)[0]
			return model.blendnode.BlendShapeNode(self.blendnode)

	def create_parallel_blendnode(self, source_mesh, base_mesh, name='parallel_blendshape'):
		'''
		Creates a parallel blend shape node.
		:param nt.Mesh source_mesh: Mesh that is the shape you want to blend.
		:param nt.Mesh base_mesh: A neutral posed mesh.
		:param string name: name of the blend node.
		:return:
		'''
		self.parallel_node = metautil.lists.first_in_list(pm.blendShape(source_mesh, base_mesh, self.mesh, parallel=True, n=name))
		self.parallel_node.weight[0].set(1)
		self.parallel_node.weight[1].set(1)
		return model.blendnode.BlendShapeNode(self.parallel_node)

	def create_parallel_shapes(self, blendnode, grp_name='mesh_blendshapes', remove_attrs=(), remove_from_layers=True):
		'''
		Creates blend shapes meshes from the source head.
		:param nt.BLendnode blendnode: a node that has blend shapes atteached.
		:param grp_name: A group node that is the parent of the newly created meshes.
		:param list remove_attrs: removes attributes that get duplicated with the mesh.
		:param bool remove_from_layers: Removes from the display layers.
		:return list shapes: returns a list of all the newly created shapes.
		'''
		blendnode_dict = blendnode.get_blendnode_dict()
		if not pm.objExists(grp_name):
			mesh_blendshapes = pm.group(em=True, n=grp_name)
		else:
			mesh_blendshapes = pm.PyNode(grp_name)
		shapes = []
		for x in blendnode_dict:
			blendnode.weight[blendnode_dict[x]].set(1)
			new_mesh = self.duplicate_mesh(x, remove_attrs=remove_attrs)
			if remove_from_layers:
				new_mesh.remove_from_layers()
			blendnode.weight[blendnode_dict[x]].set(0)
			pm.parent(new_mesh, mesh_blendshapes)
			shapes.append(x)
		return shapes

	def get_blendnodes(self, mesh=None):
		'''
		Returns all the blend nodes on a mesh.
		:param nt.Mesh mesh: A poly Mesh.
		:return: Returns all the blend nodes on a mesh.
		'''
		if not mesh:
			mesh = self.mesh
		connections = mesh.getShape().listConnections(type=(pm.nt.ObjectSet))
		blendnodes = []
		blendnode = metautil.lists.first_in_list(mesh.getShape().listConnections(type=(pm.nt.BlendShape)))
		if blendnode:
			blendnodes.append(blendnode)
		for object_set in connections:
			sets = object_set.listConnections()
			[blendnodes.append(x) for x in sets if type(x) == pm.nt.BlendShape and not x in blendnodes]
		return blendnodes

	def delete_blendnodes(self):
		'''
		Removed all the blend shape nodes connected to the mesh.
		'''
		blendnodes = self.mesh.getShape().listConnections(type=pm.nt.BlendShape)
		pm.delete(blendnodes)
		self.blendnode = None
		self.blendnodes = []
		return

	def delete_parallel_blendnode(self):
		'''
		Removes the parallel blend shape node.
		'''
		# need to add code to remove the parallel blender node that also gets created.
		pm.delete(self.parallel_node)
		return

	def create_material(self, mesh, name='lambert_material'):
		'''
		Creates a basic lambert material to apply to the mesh.
		:param object mesh: Mesh object
		:param string name: name of the lambert.
		:return list: Returns the material and the material group.
		'''
		material, material_group = pm.createSurfaceShader("lambert", name=name)
		material.addAttr('lambert_material', at='message')
		pm.sets(material_group, forceElement=[mesh])
		return [material, material_group]

	def lock_mesh(self, mesh=None, lock=True, attrs=None):
		'''
		Lock attributes on the mesh
		:param object mesh: Mesh object
		:param bool lock: True locks the attributes.  False unlocks the attributes.
		:param string list attrs: List of attributes to either lock or unlock.
		'''
		locked_mesh = self.mesh
		if not attrs:
			attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v']
		if type(attrs) != list:
			attrs = [attrs]
		if mesh:
			locked_mesh = mesh
		for attr in attrs:
			pm.setAttr(str(locked_mesh)+'.'+attr, l=lock)
		return

	def remove_from_layers(self):
		'''
		removes a mesh from what ever layers it's under.
		'''
		display_layer = self.mesh.drawOverride.listConnections(type=pm.nt.DisplayLayer)
		display_layer_shape = self.mesh.getShape().drawOverride.listConnections(type=pm.nt.DisplayLayer)

		if display_layer:
			for layer in display_layer:
				layer.drawInfo // self.mesh.drawOverride
		if display_layer_shape:
			for layer in display_layer_shape:
				layer.drawInfo // self.mesh.getShape().drawOverride
		return

	def __str__(self):
		return self.mesh.__str__()

	def __getattr__(self, attrname):
		if attrname == 'pynode':
			raise AttributeError("this instance of {0} has no pynode".format(self.__class__.__name__))
		return getattr(self.mesh, attrname)

	def __melobject__(self):
		return self.mesh.__melobject__()

	def __repr__(self):
		return self.mesh.__repr__()