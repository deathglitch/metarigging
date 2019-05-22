''' JSON wrappers.'''
# python imports
import os
import json
# maya imports
# meta imports

def write_json(data, path, file_name, indent=4, sort_keys=True):
	path = os.path.join(path, file_name + '.json')
	with open(path, 'w') as outfile:
		json.dump(data, outfile, indent=indent, sort_keys=sort_keys)
	return path

def read_json(path, file_name):
	path = os.path.join(path, file_name + '.json')
	with open(path) as json_file:
		data = json.load(json_file)
	return data