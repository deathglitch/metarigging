#Source code for some common Maya/PyQt functions we will be using
import shiboken
#sip.setapi('QString', 2)
#sip.setapi('QVariant', 2)
import PySide.QtCore as qtcore
import PySide.QtGui as qtgui
import maya.OpenMayaUI as apiui

def get_maya_window():
	"""
	Get the main Maya window as a qtgui.QMainWindow instance
	return: qtgui.QMainWindow instance of the top level Maya windows
	"""
	window = apiui.MQtUtil.mainWindow()
	if window is not None:
		return shiboken.wrapInstance(long(window), qtgui.QWidget)

def to_qt_object(maya_name):
	"""
	Convert a Maya ui path to a Qt object
	param maya_name: Maya UI Path to convert (Ex: "scriptEditorPanel1Window|TearOffPane|scriptEditorPanel1|testButton" )
	return: PyQt representation of that object
	"""
	control = apiui.MQtUtil.findControl(maya_name)
	if control is None:
		control = apiui.MQtUtil.findLayout(maya_name)
	if control is None:
		control = apiui.MQtUtil.findMenuItem(maya_name)
	if control is not None:
		return shiboken.wrapInstance(long(control), qtgui.QWidget)



