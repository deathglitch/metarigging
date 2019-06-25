'''Extends a node to add a compound attribute'''

import pymel.core as pm


class BlockCompoundAttributes:
	VERSION = 1.0

	def __init__(self, network_node):
		self.network_node = network_node
		self.check_attributes(self.network_node)

	@classmethod
	def create(cls, node_name):
		network_node = pm.createNode(pm.nt.Network, name=node_name)
		BlockCompoundAttributes.check_attributes(network_node)
		return cls(network_node)

	@staticmethod
	def check_attributes(node):
		if not node.hasAttr('version'):
			node.setAttr('version', BlockCompoundAttributes.VERSION, f=1)
		if not node.hasAttr('meta_type'):
			node.addAttr('meta_type', dt='string')
			node.setAttr('meta_type', str(node), f=1)
		if not node.hasAttr('meta_children'):
			node.addAttr('meta_children', at='message')
		if not node.hasAttr('meta_parent'):
			node.addAttr('meta_parent', at='message')
		return

	def create_message_block(self, attr_names, block_name):
		'''
		Creates a compound attribute with a list of attribute names.
		The block uses message attributes.
		:param string list attr_names: list of attribute names to use in the compound block.
		:param string block_name: the name of the compound attribute
		:return object: returns the newly created attribute block.
		'''
		if not isinstance(attr_names, list):
			attr_names = [attr_names]
		mesh_number = len(attr_names)
		self.addAttr(block_name, numberOfChildren=mesh_number, attributeType='compound', multi=True)
		for x in xrange(len(attr_names)):
			self.addAttr(str(attr_names[x]), attributeType='message', parent=block_name)
		block = self.attr(block_name)[0]
		if not self.network_node.hasAttr(block_name + '_block'):
			block.setAlias(block_name + '_block')
		return block

	def get_block_attrs_from_name(self, block_name):
		'''
		Retrieves the names in a compound attribute.
		:param string block_name: name of the compound attribute.
		:return: Returns all the message attributes names.
		'''
		result = None
		if self.hasAttr(block_name):
			result = self.attr(block_name)
		return result

	def get_block_connections(self, block_name):
		'''
		Retrieves the objects in a compound attribute.
		:param string block_name: name of the compound attribute.
		:return: Returns all the connected objects in a particular compound attribute.
		'''
		if not self.hasAttr(block_name):
			raise RuntimeError('"{0}": Block name or compound attribute does not exist.'.format(block_name))
		block = self.attr(block_name)[0]
		# get a list of all the message attributes
		block_attrs = map(lambda x: self.attr(x), pm.listAttr(block, c=True))
		block_data = [block_attr.listConnections()[0] for block_attr in block_attrs if block_attr.listConnections()]
		return block_data

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


