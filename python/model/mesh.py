''' Face: Blend Shape Mesh connected to the rig. '''

#system global imports

#Bungie C# library imports
#software specific imports
import pymel.core as pm
import maya.cmds as cmds
import os

#Bungie python imports
import rigging.blendnode

class Mesh(object):
	'''This is a mesh that is a blendshape.  Does not need to be connected to the rig.'''

	def __init__(self, mesh, skip_dialog=False):
		self.mesh = pm.PyNode(mesh)
		self.skip_dialog = skip_dialog
		self.verify()

	@classmethod
	def create(cls, mesh, skip_dialog=False):
		'''
		Wraps a mesh in an instance of the BlendShapeMesh Class.
		:param pymel object mesh: A mesh that is a blendshape for the rig.
		:param path: Path to where the shapes are saved.
		:return:
		'''
		return cls(mesh, skip_dialog)

	def get_string_name(self, include_namespace=False):
		if not include_namespace and ':' in self.head_mesh.nodeName():
			string_mesh = (self.head_mesh.nodeName()).split(':')[-1]
		else:
			return self.head_mesh.nodeName()
		return string_mesh

	def delete(self):
		'''Deletes it's self and any blendshapes connected to it.'''
		blendnodes = self.mesh.getShape().listConnections(type=pm.nt.BlendShape)
		if blendnodes:
			for node in blendnodes:
				rigging.blendnode.BlendShapeNode(node).delete()
		pm.delete(self.mesh)

	def duplicate_mesh(self, mesh_name, remove_attrs = None, skip_dialog=False):
		'''
		Duplicates the head mesh and deletes the attribute that gets connected to the network node for the head mesh.
		:param string mesh_name:  The name of the newly created mesh.
		:return class instance:
		'''
		duplicate_mesh = pm.duplicate(self.mesh, n=mesh_name)[0]
		if remove_attrs and type(remove_attrs) == list:
			[duplicate_mesh.deleteAttr(x) for x in remove_attrs if duplicate_mesh.hasAttr(x)]
		elif remove_attrs and type(remove_attrs) != list:
			pm.error('Blendshape Mesh: dup_and_delete: remove_attrs needs to be a list.')

		return Mesh(duplicate_mesh, skip_dialog=skip_dialog)

	def dup_and_delete(self, pose_name=None, remove_attrs=None, skip_dialog=False):
		'''
		Duplicates its self and deletes the old copy. It renames it's self to the original.
		:param string pose_name:
		:return: object wrapped in an instance of the class
		'''
		if not pose_name:
			pose_name = str(self.mesh)
		pm.rename(self.mesh, 'temp_head_mesh_DELETE')
		duplicate_mesh = pm.duplicate(self.mesh, n=pose_name)[0]
		if remove_attrs and type(remove_attrs) == list:
			[duplicate_mesh.deleteAttr(x) for x in remove_attrs if duplicate_mesh.hasAttr(x)]
		elif remove_attrs and type(remove_attrs) != list:
			pm.error('Blendshape Mesh: dup_and_delete: remove_attrs needs to be a list.')
		self.delete()
		return Mesh(duplicate_mesh, skip_dialog)

	def mirror(self, opposite_pose, base_mesh, skip_dialog=False):
		'''
		Mirrors the mesh.
		:param object base_mesh: The base head mesh.
		:return: Opposite mesh that is wrapped in an instance of the class
		'''
		if base_mesh and opposite_pose:
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
			opposite_pose.delete()
			opposite_pose = Mesh(pm.rename(invShape, opposite_str), skip_dialog)

			return opposite_pose
		return

	def export(self, path, file_type='.mb'):
		'''
		Exports the mesh to the appropriate folder.
		'''
		if not os.path.isdir(path):
			os.makedirs(path)
		parent = pm.listRelatives(path, p=True)
		if parent:
			pm.parent(self.mesh, w=True)
		pm.select(self.mesh)
		mesh = str(self.mesh)
		if ':' in mesh:
			mesh = mesh.split(':')[-1]
		pm.select(mesh)
		pm.exportSelected(os.path.join(path, mesh + file_type), f=True, constructionHistory=False)
		pm.select(cl=True)
		return

	@classmethod
	def import_mesh(cls, path, mesh, file_type = '.mb', skip_dialog=False):
		'''Imports the mesh from a file.'''
		pm.importFile(os.path.join(path, str(mesh) + file_type), f=True)
		return cls(mesh, skip_dialog=skip_dialog)

	def verify(self):
		'''Verifies this is a Blendshape mesh.'''
		if not pm.ls(self.mesh, type=(pm.nt.Mesh, pm.nt.Transform)):
			if not self.skip_dialog:
				pm.confirmDialog(title='Not a Blendshape Mesh', message='Mesh is Not a Blendshape Mesh', button=['Okay'], defaultButton='Okay', dismissString='Okay')
			return False
		return True


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