import pymel.core as pm
import re

def get_namespace(node):
    ns = ""
    if pm.objExists(node):
        ns = node.name()[:-len(node.stripNamespace().nodeName()) - 1]
    if ns == "":
        return ":"
    return ns

def get_namespace_object(node):
    return pm.Namespace(pm.PyNode(node).namespace())
    
def get_all_namespaces():
    ''' Returns a list of all namespaces.'''
    default_ns = pm.system.Namespace(':')
    all_namespaces = default_ns.listNamespaces(recursive=1) + [default_ns]
    return all_namespaces

def get_unique_name(name):
    ''' This will get a unique name to avoid name clashing in the DAG.'''
    if not name:
        raise StandardError('get_unique_name: name is empty or None.')
        
    if not pm.objExists(name):
        return name
        
    while pm.objExists(name):
        prefix = re.split('[0-9]*$', name)[0]
        suffix = name.replace(prefix, "")
        if suffix:
            new_suffix = int(suffix)+1
            name = prefix + str(new_suffix)
        else:
            name = name + "1"
    return name
    
def get_unique_namespace(ns):
    ''' This will get a unique namespace to avoid namespace and object name clashing.'''
    if ns == "" or ns == ':':
        ns = 'ns'
        
    if not pm.namespace(exists=ns):
        return get_unique_name(ns)
        
    while pm.namespace(exists=ns):
        prefix = re.split('[0-9]*$', ns)[0]
        suffix = ns.replace(prefix, "")
        if suffix:
            new_suffix = int(suffix)+1
            ns = prefix + str(new_suffix)
        else:
            ns = ns + "1"
    return ns
    
def delete_unused_namespaces():
    ''' This deletes all empty namespaces in the scene.'''
    all_namespaces = get_all_namespaces()
    all_namespaces.remove(pm.Namespace(':'))
    all_namespaces.reverse()
    count = 0
    for ns in all_namespaces:
        if not ns.ls() and not ns.listNamespaces():
            pm.namespace(rm=ns)
            count+=1
            
    print 'Deleted {0} namespaces.'.format(count)
    return
    
def delete_namespace(ns):
    ''' This will delete the namespace with any objects. '''
    current_namespace = pm.namespaceInfo(cur=True)
    pm.namespace(set=':')
    
    pm.namespace(set=ns)
    scene_namespaces = pm.namespaceInfo(lon=True)
    pm.namespace(set=':')
    
    for scene_namespace in scene_namespaces:
        delete_namespace(scene_namespace)
        
    pm.namespace(set=ns)
    nodes = pm.namespaceInfo(dp=True, lod=True)
    pm.namespace(set=':')
    
    for node in nodes:
        if pm.objExists(node):
            try:
                node.lock.set(0)
            except: pass
            finally:
                pm.delete(node)
    
    pm.namespace(rm=ns)
    pm.namespace(set=current_namespace)
    
    print 'Deleted the \'{0}\' namespace.'.format(ns)
    return

