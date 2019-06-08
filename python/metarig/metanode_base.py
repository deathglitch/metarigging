import pymel.core as pm

class MetaNode(object):
    def __new__(cls, node = None):
        import metarig
        result = None
        if node:
            node = pm.PyNode(node)
            if node.hasAttr('meta_type'):
                class_string = node.meta_type.get()
            else:
                raise TypeError('Node "{0}" is not a MetaMode.  It does not contain meta_type.'.format(node))
            eval_class = eval('metarig.'+class_string)
            result = eval_class.__new__(eval_class)
        else:
            result = super(MetaNode, cls).__new__(cls)
        return result
        
    def __init__(self, node):
        node = pm.PyNode(node)
        if not node.hasAttr('meta_type') and node.type() == 'network':
            raise TypeError('Node {0} is not a Metarig Node.'.format(node))
        self.pynode = node
    
    @staticmethod
    def create(name, type, parent = None, version = 1.0):
        if not parent:
            print 'no parent for metanode:', name
            #raise StandardError('MetaNode must have a parent!!')
        else:
            parent = MetaNode(parent)
        node = pm.createNode('network', name=str(name))
        
        node.setAttr('version', version, f=1)
        node.setAttr('meta_type', type, f=1)
        node.addAttr('meta_parent', at='message')
        node.addAttr('meta_children', dt='string')
        
        node = MetaNode(node)
        if parent:
            node.set_metanode_parent(parent)
            
        return node
        
    def get_xnode_parent(self):
        result = None
        if self.pynode.hasAttr("meta_parent"):
            conn = self.pynode.meta_parent.listConnections()
            if conn:
                result = MetaNode(conn[0])
        return result
        
    def get_meta_children(self, of_type = None):
        '''
        of_type: class object, not a string
        '''
        result = []
        if self.pynode.hasAttr('meta_children'):
            conn = self.pynode.meta_children.listConnections()
            if conn:
                children = [MetaNode(connection_node) for connection_node in conn]
                if not of_type:
                    result = children
                else:
                    children = [child for child in children if isinstance(child, of_type)]
                    result = children
        return result
        
    def get_type(self):
        return self.meta_type.get()

    def get_metanode_parent(self):
        meta_parent = self.pynode.meta_parent.listConnections()
        return meta_parent[0]
        
    def set_metanode_parent(self, parent):
        parent_attr = parent.meta_children
        child_attr = self.meta_parent
        parent_attr >> child_attr
 
    def connect_node_to_metanode(self, metanode, connection, parent_attr = 'meta_parent'):
        self.add_meta_parent_attr_to_node(pm.PyNode(metanode))
        if not self.pynode.hasAttr(connection):
            self.pynode.addAttr(connection, dt='string')
        self.pynode.attr(connection) >> metanode.attr(parent_attr)
        return

    def connect_ordered_nodes_to_metanode(self, connect_nodes, attr, parent_attr = 'meta_parent'):
        start_index = 0
        if not self.pynode.hasAttr(attr):
            self.pynode.addAttr(attr, dt='string', m=1)
        else:
            indices = self.pynode.getAttr(attr, mi=True)
            if indices:
                for index in indices:
                    if index > start_index:
                        start_index = index
                start_index += 1
        for index, connect_node in enumerate(connect_nodes):
            if not connect_node.hasAttr(parent_attr):
                connect_node.addAttr(parent_attr, dt='string')
            self.pynode.attr('%s[%i]' % (attr, index + start_index)) >> connect_node.attr(parent_attr)
        return
        
    def add_meta_parent_attr_to_node(self, parent_node):
        if not pm.hasAttr(parent_node, 'meta_parent'):
            pm.addAttr(parent_node, sn='meta_parent', dt='string')
        return
 
    def __str__(self):
        return self.pynode.__str__()
        
    def __getattr__(self, attrname):
        if attrname == 'pynode':
            raise AttributeError("this instance of {0} has no pynode".format(self.__class__.__name__))
        return getattr(self.pynode, attrname)
     
    def __melobject__(self):
        return self.pynode.__melobject__()
    
    def __apimfn__(self):
        return self.pynode.__apimfn__()
        
    def __repr__(self):
        return self.pynode.__repr__()

    def __radd__(self, other):
        return self.pynode.__radd__(other)

    def __reduce__(self):
        return self.pynode.__reduce__()
    
    def __eq__(self, other):
        return self.pynode.__eq__(other)
       
    def __hash__(self):
        return self.pynode.__hash__()
       
    def __ne__(self, other):
        return self.pynode.__ne__(other)

    def __nonzero__(self):
        return self.pynode.__nonzero__()

    def __lt__(self, other):
        return self.pynode.__lt__(other)
        
    def __gt__(self, other):
        return self.pynode.__gt__(other)
        
    def __le__(self, other):
        return self.pynode.__le__(other)
        
    def __ge__(self, other):
        return self.pynode.__ge__(other)