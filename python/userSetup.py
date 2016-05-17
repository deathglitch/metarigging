import maya.mel as mel
import sys
import os
from pymel.core import *
'''
version = mel.eval("getApplicationVersionAsFloat()")
if (version == 2009.0 or version == 2010.0):
    print ("importing pymel... kthxbai!\n")
    from pymel.core import *
else:
    print "Pymel is already operational.\n"
'''
print 'checking for metarigging in sys.path...'
result = next((x for x in sys.path if 'metarigging' in x), None)
if not result:
    print 'Appending c:/metarigging/python to sys.path'
    sys.path.append(r'c:/metarigging/python')
else:
    print 'c:/metarigging/python already in sys.path'
    
print 'checking for metarigging in PYTHONPATH...'    
__python_path = os.getenv('PYTHONPATH')
result = r'c:/metarigging/python' in os.getenv('PYTHONPATH')
if not result:
    print 'Appending c:/metarigging/python to PYTHONPATH'
    __python_path = __python_path + ';c:/metarigging/python'
    os.environ['PYTHONPATH'] = __python_path
else:
    print 'c:/metarigging/python already in PYTHONPATH'