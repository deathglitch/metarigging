import pymel.core as pm
import os

import metautil.json_util as json_u


class Follicle():
	'''Creates a hair Follicle in Maya and attaches it to a mesh.'''
	def __init__(self, follicle):
		if follicle and not follicle.listRelatives(shapes=True) and type(follicle) == pm.nt.Follicle:
			self.follicle = follicle
			self.follicle_transform = self.follicle.getParent()
		elif follicle and follicle.listRelatives(shapes=True) and type(follicle.getShape()) == pm.nt.Follicle:
			self.follicle = follicle.getShape()
			self.follicle_transform = self.follicle
		else:
			raise ValueError('The node is not a follicle.')

		self.u = self.follicle.parameterU.get()
		self.v = self.follicle.parameterV.get()
		self.uv = [self.follicle.parameterU.get(), self.follicle.parameterV.get()]

	@classmethod
	def create(cls, mesh, obj_position=None, follicle_name='follicle_constraint', uv=[]):
		'''
		Creates a Follicle attached to a mesh using an object position or the uv position
		:param transform mesh: A tranform mesh in which you are attaching a follicle
		:param transform obj_position: gets the position of the object to set as the UV position for the follicle
		:param string follicle_name: name of the follice transform and follicle shape
		:param float list uv: uv coordinates
		:return object follicle:  Return the shape node of the created follicle
		'''
		mesh_shape = mesh.getShape()
		if not mesh_shape:
			raise StandardError('You can only attach the follicle to an object that has a shape.')
		if obj_position and type(obj_position) == pm.nt.Transform:
			obj_position = pm.xform(obj_position, q=True, ws=True, t=True)
		# else:
		# raise StandardError('The object you are using for a position needs to be a transform.')

		mesh_shape = None
		if mesh and type(mesh) == pm.nt.Transform:
			mesh_shape = mesh.getShape()
		if isinstance(mesh_shape, pm.nt.Shape):
			follicle = pm.createNode('follicle', n=follicle_name + '_shape')
			follicle_parent = follicle.getParent()
			follicle_parent.rename(follicle_name)
			follicle.outTranslate >> follicle_parent.translate
			follicle.outRotate >> follicle_parent.rotate
			mesh_shape.worldMatrix[0] >> follicle.inputWorldMatrix
			mesh_shape.worldMesh >> follicle.inputMesh

		if not uv:
			closest_node = pm.createNode('closestPointOnMesh', n='cpm_' + follicle_name)
			mesh_shape.outMesh >> closest_node.inMesh
			mesh_shape.worldMatrix[0] >> closest_node.inputMatrix

			closest_node.inPositionX.set(obj_position[0])
			closest_node.inPositionY.set(obj_position[1])
			closest_node.inPositionZ.set(obj_position[2])
			uv = [closest_node.parameterU.get(), closest_node.parameterV.get()]
			pm.delete(closest_node)

		follicle.parameterU.set(uv[0])
		follicle.parameterV.set(uv[1])
		return cls(follicle)

	def __str__(self):
		'''
		Will return the string name rather than the class instance
		'''
		return self.follicle.__str__()

	def __getattr__(self, attrname):
		'''Returns the Pymel attributes'''
		if attrname == 'pynode':
			raise AttributeError("this instance of {0} has no pynode".format(self.__class__.__name__))
		return getattr(self.follicle, attrname)

	def __melobject__(self):
		return self.follicle.__melobject__()

	def __repr__(self):
		'''Returns the Pymel string rather than the class instance'''
		return self.follicle.__repr__()


class ExportFolliclePositions():
	'''Exports Follicle data to a Json file.  This class deals with multiple Follicles.'''
	def __init__(self, data={}):
		self.data = data

	@classmethod
	def create(cls, mesh, joints):
		data = {}
		if mesh and type(mesh) == pm.nt.Transform:
			pm.select(joints)

			locator = None
			if pm.objExists('joint_position_loc'):
				locator = pm.PyNode('joint_position_loc')
			else:
				locator = pm.spaceLocator(n='joint_position_loc')
			if not pm.objExists('follicle_grp'):
				follicle_grp = pm.group(em=True, n='follicle_grp')
			for joint in joints:
				follicles = []
				follicle = None
				name = None
				pm.delete(pm.pointConstraint(joint, locator, w=1, mo=False))
				name = str(joint.replace(str(joint), 'follicle_'+str(joint)))
				follicle = Follicle.create(mesh=mesh, obj_position=locator, follicle_name=name)
				follicles.append(follicle)
				pm.parentConstraint(follicle.follicle_transform, joint, w=True, mo=False)
				pm.parent(follicle.follicle_transform, follicle_grp)

				data[str(joint)] = {}
				data[str(joint)]['follicle'] = str(follicle.follicle_transform)
				data[str(joint)]['uv'] = (follicle.parameterU.get(), follicle.parameterV.get())
				data[str(joint)]['joint_ws_position'] = pm.xform(joint, q=True, ws=True, t=True)

			pm.delete(locator)
			pm.select(cl=True)
		return cls(data)

	def export(self, path, file_name):
		''' Export follicle name, uv position, and joint ws position to a JSON File'''
		if self.data:
			if not os.path.isdir(path):
				os.makedirs(path)
				json_u.write_json(path, file_name, self.data)
			return os.path.join(path, file_name)
