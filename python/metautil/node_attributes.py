# manipulate node attributes
import pymel.core as pm


def lock_attributes(obj, attrs=None, lock=True):
	'''
	Lock or unlock node attributes
	:param PyNode obj:  Object to lock or unlock attributes
	:param string/string list attrs: string attributes on the object
	:param bool lock: True to lock the attributes False to unlock
	'''
	if not attrs:
		attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz']
	if lock:
		if not isinstance(attrs, list):
			obj.attr(attrs).lock()
		else:
			[obj.attr(x).lock() for x in attrs]
		return
	else:
		if not isinstance(attrs, list):
			obj.attr(attrs).unlock()
		else:
			[obj.attr(x).unlock() for x in attrs]
		return


def get_lock_attributes(obj, attrs=None):
	'''
	Returns attributes lock state
	:param PyNode obj: The object that its attributes are being queried.
	:param string/string list attrs: string attributes on the object
	:return dictionary: Returns a dictionary of the attribute and lock state. ex: {'tx:True'}
	'''
	attribute_dict = {}
	if not attrs:
		attrs = ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz']

	if not isinstance(attrs, list):
		attribute_dict[attrs] = obj.attr(attrs).isLocked()
		return attribute_dict
	else:
		for x in attrs:
			attribute_dict[x] = obj.attr(x).isLocked()
	return attribute_dict


def lock_attributes_dict(obj, dict):
	'''
	Lock or unlock node attributes using a dictionary
	:param PyNode obj:  Object to lock or unlock attributes
	:param dictionary dict: A dictionary of the attribute and lock state
	'''
	for attr, lock_state in dict.items():
		if lock_state:
			obj.attr(attr).lock()
		else:
			obj.attr(attr).unlock()
	return

def remove_user_attributes(mesh):
	user_attrs = map(lambda x: x.split('.')[-1], mesh.listAttr(ud=True))
	if user_attrs:
		if not isinstance(mesh, pm.nt.Transform):
			mesh = pm.PyNode(mesh)
		for attribute in user_attrs:
			mesh.deleteAttr(attribute)
	return

