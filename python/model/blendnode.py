''' Face: Staging UI. '''

# python imports
# maya imports
import pymel.core as pm
# meta imports
import metautil.listutil



class BlendShapeNode():
	def __init__(self, blendnode=None):
		self.blendnode = self.verify(blendnode)

	@classmethod
	def create(cls, shapes, source, name=None):
		'''
		:param shapes: list of meshes that are used to create blend shapes.
		:param source: The mesh to connect the blend shapes to.
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
		:return:
		'''
		pm.delete(self.blendnode)
		return

	def set_weights(self, mesh, weight=0):
		verts = pm.polyEvaluate(mesh, v=True)
		for x in range(verts):
			self.blendnode.inputTarget[0].inputTargetGroup[0].targetWeights[x].set(weight)

	def index(self):
		'''
		Returns an index list of the blend shapes as ints.
		:return list:
		'''
		return self.blendnode.weightIndexList()

	def last_index(self):
		'''
		Returns the number of shapes connected to the blend node.
		:return int:
		'''
		blendnode_index = self.blendnode.weightIndexList()
		return len(blendnode_index) - 1

	def get_blendnode_dict(self):
		'''
		Returns the name of the shape as the key and the index as the value.
		:return dictionary:
		'''
		shapes = self.get_shapes()
		index = self.index()
		return dict(zip([x.split(':')[-1] for x in shapes], index))

	def get_shapes(self):
		'''
		Gets a list of all the shapes connected to the blend node.
		:return list:
		'''
		history = pm.listHistory(self.blendnode)
		blendnode_history = pm.ls(history, type='blendShape')[0]
		shapes = pm.listAttr(blendnode_history + ".w", m=True)
		return shapes

	def verify(self, blendnode):
		'''
		Blendshape wrapper.  Gives you an index list, name list, and knows how to reconnect to a rig.
		:param PyNode object blendnode: This can be a blend shape node or a mesh that has a blendshape connected to it.
		'''
		if blendnode:
			blendnode = pm.PyNode(blendnode)
		if type(blendnode) == pm.nt.BlendShape:
			return blendnode
		elif blendnode and pm.ls(blendnode, type=(pm.nt.Mesh, pm.nt.Transform)):
			blendnode = metautil.listutil.first_in_list(blendnode.getShape().listConnections(type=pm.nt.BlendShape))

		if blendnode:
			return blendnode
		else:
			raise RuntimeError('The object is not a blendshape or an object with a blendshape attached.')

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
