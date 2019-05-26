import pymel.core as pm
import metanode_base
import metautil.nsutil
import metautil.json_util

class ParameterMetaNode(metanode_base.MetaBase):
	VERSION = 1
	def __init__(self, node, parameter_names):
		self.node = node
		self.parameter_names = parameter_names
		
	def get_node(self):
		return self.node
		
	def get_parameters_names(self):
		return self.parameter_names
	
	@staticmethod
	def create(metanode_parent, parameter_list, usage):
		if not parameter_list or type(parameter_list) != list:
			raise RuntimeError('Parmameters needs to be a list.')
		# namespace
		orig_ns = pm.Namespace.getCurrent()
		new_ns = metautil.nsutil.get_namespace_object(metanode_parent)
		new_ns.setCurrent()

		parameter_node_name = ParameterMetaNode.__name__ + '_' + usage
		node = metanode_base.MetaBase.create(parameter_node_name, version=ParameterMetaNode.VERSION)
		node.addAttr('usage', type='string')
		node.setAttr('usage', usage)
		node.setAttr("parameter_set", parameter_node_name, force=True)
		node.addAttr('parameters', numberOfChildren=3, attributeType='compound', multi = True)
		node.addAttr('parameter', dt = 'string', parent = 'parameters')
		node.addAttr('value', at='float', parent='parameters' )
		node.addAttr('input', attributeType='message', parent='parameters')
		
		for x in xrange(len(parameter_list)):
			attr = node.parameters[x]
			attr.parameter.set(parameter_list[x])
			attr.setAlias(parameter_list[x])
		
		ParameterMetaNode(node, parameter_list).update()
		orig_ns.setCurrent()
		return ParameterMetaNode(node, parameter_list)
		

def get_parameters(path, file_name):
	parameters = metautil.json_util.read_json(path, file_name)
	return parameters

