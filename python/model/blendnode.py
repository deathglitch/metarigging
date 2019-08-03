''' Face: Staging UI. '''

#system global imports

#Bungie C# library imports
#software specific imports
import pymel.core as pm

#Bungie python imports
import metautil.lists

class BlendShapeNode():
	def __init__(self, blendnode=None):
		self.blendnode = self.get_blendnode(blendnode)

	@classmethod
	def create(cls, shapes, source, name=None):
		'''
		:param list nt.Mesh shapes: list of meshes that are used to create blend shapes.
		:param nt.Mesh source: The mesh to connect the blend shapes to.
		:param string name: name of the blend node.
		:return Blend shape node:
		'''
		no_ns_source = None
		if ':' in source:
			no_ns_source = source.split(':')[-1]
		else:
			no_ns_source = source
		if not name:
			name = str(no_ns_source) + '_blendshape'
		blendnode = pm.blendShape(shapes, source, n=name)[0]
		return cls(blendnode)

	def delete(self):
		'''
		Deletes it's self.
		'''
		pm.delete(self.blendnode)
		return

	def delete_all(self, mesh):
		'''
		Deletes all blend nodes on a mesh.
		'''
		pm.delete(self.get_blendnodes(mesh))
		return

	def delete_blendshapes(self):
		'''
		Deletes the all the blendshape connected to the blendshape node in the scene.
		'''
		shapes = self.get_shapes()
		[pm.delete(x) for x in shapes if pm.objExists(x)]
		return

	def set_weights(self, mesh, weight=0):
		'''
		Set the Blendshape weight on each vert.
		:param nt.Mesh mesh: Mesh that is being set.
		:param float weight: the blend shape weight value a blend shape should have on a base mesh.
		'''
		verts = pm.polyEvaluate(mesh, v=True)
		for x in range(verts):
			self.blendnode.inputTarget[0].inputTargetGroup[0].targetWeights[x].set(weight)
		return

	def index(self):
		'''
		Returns an index list of the blend shapes as ints.
		:return list: Returns an index list of the blend shapes as ints.
		'''
		return self.blendnode.weightIndexList()

	def last_index(self):
		'''
		Returns the number of shapes connected to the blend node.
		:return int: Returns the number of shapes connected to the blend node.
		'''
		blendnode = pm.PyNode('fox_head_blendshape')
		blendnode_index = blendnode.weightIndexList()
		return len(blendnode_index) - 1

	def get_blendnode_dict(self):
		'''
		Returns the name of the shape as the key and the index as the value.
		:return dictionary: Returns the name of the shape as the key and the index as the value.
		'''
		shapes = self.get_shapes()
		index = self.index()
		return dict(zip([x.split(':')[-1] for x in shapes], index))

	def get_shapes(self):
		'''
		Gets a list of all the shapes connected to the blend node.
		:return list: Gets a list of all the shapes connected to the blend node.
		'''
		history = pm.listHistory(self.blendnode)
		blendnode_history = pm.ls(history, type='blendShape')[0]
		shapes = pm.listAttr(blendnode_history + ".w", m=True)
		return shapes

	def get_active_attr(self):
		'''
		Returns a list of blend shapes that are fully activated.
		:return: Returns a list of blend shapes that are fully activated.
		'''
		shapes = self.get_shapes()
		active = []
		for shape in shapes:
			if pm.PyNode(str(self.blendnode) +'.' + str(shape)).get() == 1:
				active.append(shape)
		return active

	def get_blendnodes(self, mesh):
		'''
		Returns all the blend nodes on a mesh.
		:param nt.Mesh mesh: A poly Mesh.
		:return: Returns all the blend nodes on a mesh.
		'''
		connections = mesh.getShape().listConnections(type=(pm.nt.ObjectSet))
		blendnodes = []
		blendnode = metautil.lists.first_in_list(mesh.getShape().listConnections(type=(pm.nt.BlendShape)))
		if blendnode:
			blendnodes.append(blendnode)
		for object_set in connections:
			sets = object_set.listConnections()
			[blendnodes.append(x) for x in sets if type(x) == pm.nt.BlendShape and not x in blendnodes]
		return blendnodes

	def get_blendnode(self, blendnode):
		'''
		Blendshape wrapper.  Gives you an index list, name list, and knows how to reconnect to a rig.
		:param PyNode object blendnode: This can be a blend shape node or a mesh that has a blendshape connected to it.
		:return: Returns an index list, name list
		'''
		if blendnode:
			blendnode = pm.PyNode(blendnode)
			mesh = pm.PyNode(blendnode)
		if isinstance(blendnode, pm.nt.BlendShape):
			return blendnode
		# if a mesh is passed in, return the 1st blendnode.
		elif blendnode and pm.ls(mesh, type=(pm.nt.Mesh, pm.nt.Transform)):
			blendnode = metautil.lists.first_in_list(mesh.getShape().listConnections(type=pm.nt.BlendShape))
			if not blendnode:
				blendnode = metautil.lists.first_in_list(self.get_blendnodes(mesh))
		if blendnode:
			return blendnode
		else:
			raise RuntimeError('The object is not a blendshape or an object with a blendshape attached.')
		return

	def __str__(self):
		return self.blendnode.__str__()

	def __getattr__(self, attrname):
		if attrname == 'pynode':
			raise AttributeError("this instance of {0} has no pynode".format(self.__class__.__name__))
		return getattr(self.blendnode, attrname)

	def __melobject__(self):
		return self.blendnode.__melobject__()

	def __repr__(self):
		return self.blendnode.__repr__()