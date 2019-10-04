'''Extends a node to add a compound attribute'''

import pymel.core as pm


class BlockCompoundAttributes:
	VERSION = 1.0
	TYPE = 'CompoundMetaNode'

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
			node.setAttr('meta_type', BlockCompoundAttributes.TYPE, f=1)
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
		attr_number = len(attr_names)
		self.addAttr(block_name, numberOfChildren=attr_number, attributeType='compound', multi=True)
		for x in xrange(len(attr_names)):
			self.addAttr(str(attr_names[x]), attributeType='message', parent=block_name)
		block = self.attr(block_name)[0]
		if not self.network_node.hasAttr(block_name + '_block'):
			block.setAlias(block_name + '_block')
		return block

	def get_all_attributes_from_block(self, block_name):
		block = self.get_block_name_as_attribute(block_name)
		sub_block = block_name + '_block'
		attribute_list = [self.attr(x) for x in pm.listAttr(block) if not str(x) in sub_block]
		return attribute_list

	def get_block_name_as_attribute(self, block_name):
		'''
		Retrieves the names in a compound attribute.
		:param string block_name: name of the compound attribute.
		:return: Returns all the message attributes names.
		'''
		result = None
		if self.hasAttr(block_name):
			result = self.attr(block_name)[0]
		return result

	def get_block_connections(self, block_name, get_plugs=False):
		'''
		Retrieves the objects in a compound attribute.
		:param string block_name: name of the compound attribute.
		:param bool get_plugs: If True it will return the attributes rather than the object.
		:return: Returns all the connected objects in a particular compound attribute.
		'''
		if not self.hasAttr(block_name):
			raise RuntimeError('"{0}": Block name or compound attribute does not exist.'.format(block_name))
		block = self.attr(block_name)[0]
		# get a list of all the message attributes
		block_attrs = map(lambda x: self.attr(x), pm.listAttr(block, c=True))
		if get_plugs:
			block_data = [block_attr.listConnections(p=True)[0] for block_attr in block_attrs if block_attr.listConnections()]
		else:
			block_data = [block_attr.listConnections()[0] for block_attr in block_attrs if block_attr.listConnections()]
		return block_data

	def get_block_names(self):
		'''
		Returns all the compound attribute names.
		:return: string list of all the compound attribute names.
		'''
		compound = []
		all_attrs = self.listAttr()
		for attrs in all_attrs:
			if attrs.type() == 'TdataCompound':
				compound.append(str(attrs).split('.')[-1])
		return compound

	def get_blocks_as_objects(self):
		'''
		Returns all the compound attribute objects.
		:return: list of all the compound attribute objects.
		'''
		compound = []
		all_attrs = self.listAttr()
		for attrs in all_attrs:
			if attrs.type() == 'TdataCompound':
				compound.append(attrs)
		return compound

	def disconnect_block_connections(self, block_name):
		'''
		Disconnectes an object from the staging node.
		:param string block_name:
		:return: the block in which the mesh will be disconnected from.
		'''
		block_attributes = self.get_all_attributes_from_block(block_name)
		for x in xrange(len(block_attributes)):
			if block_attributes[x].listConnections():
				objs_plug = block_attributes[x].listConnections(p=True)[0]
				block_attributes[x] // objs_plug
		return

	def disconnect_and_delete_block(self, block_name):
		self.disconnect_block_connections(block_name)
		block = self.attr(block_name)
		pm.deleteAttr(block)
		return

	def add_to_block(self, attributes, block_name):
		if not isinstance(attributes, list):
			attributes = [attributes]
		blocks = self.get_block_names()
		if not block_name in blocks:
			self.create_message_block(attributes, block_name)
		else:
			existing_attributes = self.get_all_attributes_from_block(block_name)
			self.disconnect_and_delete_block(block_name)
			attribute_list = attributes + existing_attributes
			self.create_message_block(attribute_list, block_name)
		return

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


class BlockMultiCompoundAttributes:
	VERSION = 1.0
	TYPE = 'CompoundMultiMetaNode'

	def __init__(self, network_node):
		self.network_node = network_node
		self.check_attributes(self.network_node)

		self.str_attrs = []
		self.message_attrs = []
		self.float_attrs = []
		self.int_attrs = []
		self.block_connections = {}

		# data[block_name][block_type] = None
		# data[block_name][attribute_name] = {string_text:'Some Text'}
		# data[block_name][attribute_name] = {string_connection : [None, 'metaRootNode']}
		# data[block_name][attribute_name] = {message : ['ikComponent', None]}
		# data[block_name][attribute_name] = {float : 1.0}
		# data[block_name][attribute_name] = {float_connection : [rangeNode, None]}
		# data[block_name][attribute_name] = {int : 1}
		# data[block_name][attribute_name] = {int_connection : [rangeNode, None]} # [] is in/out connections

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
			node.setAttr('meta_type', BlockCompoundAttributes.TYPE, f=1)
		if not node.hasAttr('meta_children'):
			node.addAttr('meta_children', at='message')
		if not node.hasAttr('meta_parent'):
			node.addAttr('meta_parent', at='message')
		return

	def get_number_of_children(self):
		children = []
		number_of_children = 0
		children.append(len(self.str_attrs_connections.keys()))
		children.append(len(self.str_attrs_text.keys()))
		children.append(len(self.message_attrs.keys()))
		children.append(len(self.float_attrs.keys()))
		children.append(len(self.int_attrs.keys()))
		for num in children:
			number_of_children += num
		return number_of_children

	def create_multi_block(self, main_block_name, block_names):
		number_of_blocks = 1 + self.get_number_of_children()
		self.network_node.addAttr(main_block_name, numberOfChildren=number_of_blocks, attributeType='compound', multi=True)
		self.network_node.addAttr('block_type', dt='string', parent=main_block_name)
		if self.str_attrs:
			[self.network_node.addAttr(x, dt='string', parent=main_block_name) for x in self.str_attrs]
		if self.message_attrs:
			[self.network_node.addAttr(x, attributeType='message', parent=main_block_name) for x in self.message_attrs]
		if self.float_attrs:
			[self.network_node.addAttr(x, at='float', parent=main_block_name) for x in self.float_attrs]
		if self.int_attrs:
			[self.network_node.addAttr(x, at='long', parent=main_block_name) for x in self.int_attrs]

		for x in xrange(len(block_names)):
			node_attr = self.network_node.attr(main_block_name)[x]
			#if block_type:
			#	node_attr.attr(main_block_name).block_type.set(block_type[x])
			#else:
			#	node_attr.attr(main_block_name).block_type.set(block_names[x])

			#for attribute,connection in self.str_attrs_connections.items():
			#	node_attr

			if not self.network_node.hasAttr(block_names[x]):
				node_attr.setAlias(block_names[x])
		return

	def add_connections(self):
		pass

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

