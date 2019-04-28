'''
from pkgutil import walk_packages
from os import path

__all__ = []
__pkg_prefix = "%s." % __name__
__pkg_path = path.abspath(__path__[0]).rsplit("/", 1)[0]

for loader, modname, _ in walk_packages([__pkg_path]):
    if modname.startswith(__pkg_prefix):
        #load the module / package
        module = loader.find_module(modname).load_module(modname)
        modname = modname[len(__pkg_prefix):] # strip the package prefix from name
        #append all top level modules and packages to __all__
        if not "." in modname:
            __all__.append(modname)
            globals()[modname] = module
        #set everything else as an attribute of their parent package
        else:
            #get the tip level package from globals()
            pkg_name, rest = modname.split(".", 1)
            pkg = globals()[pkg_name]
            #recursively get the modules parent package via getattr
            while "." in rest:
                subpkg, rest = rest.split(".", 1)
                pkg = getattr(pkg, subpkg)
            #set the module (or package) as an attribute of its parent package
            setattr(pkg, rest, module)

import os
import os.path
import sys

__python_path = os.getenv('PYTHONPATH').split(':')
if __python_path:
    __python_path = __python_path[0].replace('/', os.path.sep).lower()
else:
    raise ImportError('PYTHONPATH not found.')
    
for _p in __path__:
    current_module_name = _p.lower().replace(__python_path + os.path.sep, '').replace(os.path.sep, '.')
    file_list = [_f for _f in os.listdir(_p) if os.path.isfile(os.path.join(_p, _f)) and _f.endswith(".py") and _f.find("__init__") == -1]
    
    for _file_name in file_list:
        import_module_name = _file_name.replace('.py', '')
        full_module_path = current_module_name + "." + import_module_name
        if hasattr(sys.modules[current_module_name], import_module_name):
            if sys.modules.has_key(full_module_path):
                del(sys.modules[full_module_path])
    for _file_name in file_list:
        import_module_name = _file_name.replace('.py', '')
        full_module_path = current_module_name + "." + import_module_name
        if sys.modules.has_key(full_module_path):
            setattr(sys.modules[current_module_name], import_module_name, sys.modules[full_module_path])
        else:
            setattr(sys.modules[current_module_name], import_module_name, __import__(import_module_name, globals(), locals(), []))
'''

import os
import sys
import inspect

_module = sys.modules[__name__]
_safe_import_list = [_x.__name__ for _x in _module, os, sys, inspect]

for mod in [m for m in sys.modules.keys() if m != __name__ and sys.modules[m] != None and m.startswith(__name__) and len(m.split(__name__ + ".")[-1].split(".")) == 1 and (not sys.modules[m].__file__.split(os.path.sep)[-1].startswith("__init__"))]:
    del(sys.modules[mod])
    
from basic_rig import *
from simple_rig import *

#deleting classes, function, modules not in module
for _function_name in [_member[0] for _member in inspect.getmembers(_module, inspect.isfunction) if not _member[1].__module__.startswith(__name__)]:
    delattr(_module, _function_name)
    
for _class_name in [_member[0] for _member in inspect.getmembers(_module, inspect.isclass) if not _member[1].__module__.startswith(__name__)]:
    delattr(_module, _class_name)
    
for _module_info in [_member for _member in inspect.getmembers(_module, inspect.ismodule) if _member[1].__name__ not in _safe_import_list]:
    if not hasattr(_module_info[1], "__file__"):
        delattr(_module, _module_info[0])
        continue
    if not _module_info[1].__file__.lower().startswith(__file__.rpartition("\\")[0].lower()):
        delattr(_module, _module_info[0])