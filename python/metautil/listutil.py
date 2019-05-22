'''Utility that handles lists'''

# python imports
# maya imports
import pymel.core as pm
# meta imports


def first_in_list(var):
	if var and type(var) == list:
		if len(var) > 0:
			return var[0]
	return


