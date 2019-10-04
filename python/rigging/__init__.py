import os
import sys
import inspect

_module = sys.modules[__name__]
_safe_import_list = [_x.__name__ for _x in _module, os, sys, inspect]

for mod in [m for m in sys.modules.keys() if m != __name__ and sys.modules[m] != None and m.startswith(__name__) and len(m.split(__name__ + ".")[-1].split(".")) == 1 and (not sys.modules[m].__file__.split(os.path.sep)[-1].startswith("__init__"))]:
    del(sys.modules[mod])
    
from chain import *
from grip import *
from rig_fk import *
from rig_ik import *
from rig_cog import *
from rig_reverse import *
from rig_rfk import *

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