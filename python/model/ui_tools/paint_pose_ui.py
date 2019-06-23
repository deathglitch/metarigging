import pymel.core as pm

import PySide2.QtCore as qtcore
import PySide2.QtGui as qtgui
from PySide2 import QtWidgets
import qtutils.qt_utils as MetaWindow

import model.tools.paint_pose as paint_neutral

###########################################################################################################
#
###########################################################################################################
class PaintPoseUI(MetaWindow.MetaWindow):
	VERSION = 1.0

	def __init__(self):
		MetaWindow.MetaWindow.__init__(self, PaintPoseUI.__name__)

		self.setWindowTitle("Paint Blend Shape {0}".format(PaintPoseUI.VERSION))
		QtWidgets.QToolTip.setFont(qtgui.QFont('SansSerif', 10))

		main_layout = QtWidgets.QVBoxLayout()
		main_layout.setContentsMargins(5, 5, 5, 5)
		main_layout.setSpacing(5)
		main_layout.setAlignment(qtcore.Qt.AlignTop)
		self.setLayout(main_layout)

		# menu bar
		self.menuBar = QtWidgets.QMenuBar(parent=self)  # requires parent
		self.menu = QtWidgets.QMenu(self)
		self.about = QtWidgets.QMenu(self)
		self.menu.setTitle('File')
		self.about.setTitle('About')
		self.menuBar.addMenu(self.menu)
		self.menuBar.addMenu(self.about)

		close = QtWidgets.QAction('Close', self)
		close.setShortcut("Ctrl+Q")
		#close.setStatusTip('Leave The App')
		close.triggered.connect(self.close)
		close.setToolTip('Closes the Paint Blend Shape Weights Tool.')
		self.menu.addAction(close)

		reset = QtWidgets.QAction('Reset Scene', self)
		reset.setStatusTip('Resets the scene.')
		reset.triggered.connect(self.reset_scene)
		#reset.setToolTip('Resets the scene and helps fix errors for the tool.')
		self.menu.addAction(reset)

		main_layout.addWidget(self.menuBar)

		# Introduction
		drcts = QtWidgets.QLabel('Select the base mesh then the posed mesh.')
		main_layout.addWidget(drcts)

		weight_tool_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(weight_tool_frame)
		# start button
		self.open_weight_tool = QtWidgets.QCheckBox('Open Maya Paint Blend Shape Weights Tool')
		self.open_weight_tool.setChecked(True)
		weight_tool_frame.addWidget(self.open_weight_tool)

		# spacer
		spacer_01 = QtWidgets.QHBoxLayout()
		main_layout.addLayout(spacer_01)

		spacer_label = QtWidgets.QLabel('')
		spacer_01.addWidget(spacer_label)

		# mesh_name
		mesh_name_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(mesh_name_frame)

		self.mesh_name_lineEdit = QtWidgets.QLineEdit()
		mesh_name_frame.addWidget(self.mesh_name_lineEdit)

		# start button
		start_tool_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(start_tool_frame)

		self.start_tool_button = QtWidgets.QPushButton('Paint Pose Setup')
		start_tool_frame.addWidget(self.start_tool_button)

		# finish button
		finish_tool_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(finish_tool_frame)

		self.finish_tool_button = QtWidgets.QPushButton('Paint Pose Finish')
		finish_tool_frame.addWidget(self.finish_tool_button)

		# cancel button
		cancel_tool_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(cancel_tool_frame)

		self.cancel_tool_button = QtWidgets.QPushButton('Cancel')
		cancel_tool_frame.addWidget(self.cancel_tool_button)

		# --------------------------------------------------------------------------
		# Signals
		# --------------------------------------------------------------------------
		self.start_tool_button.clicked.connect(self.start_tool)
		self.finish_tool_button.clicked.connect(self.finish_button)
		self.cancel_tool_button.clicked.connect(self.cancel)

	# --------------------------------------------------------------------------
	# SLOTS
	# --------------------------------------------------------------------------
	def start_tool(self):
		meshes = pm.selected()
		if len(meshes) < 2:
			pm.confirmDialog(title='Selection Error.', message='Please select two meshes.')
			return
		for x in xrange(2):
			if not isinstance(meshes[x], pm.nt.Transform) and isinstance(meshes[x].getShape(), pm.nt.Mesh):
				pm.confirmDialog(title='No deformable objects selected',
								message='Please select two objects of type poly meshes.')
				return
		if len(meshes) > 2:
			pm.warning('More than two meshes were selected.  Using the frist two selected.')

		if not pm.polyEvaluate(meshes[0], v=True) == pm.polyEvaluate(meshes[1], v=True):
			pm.confirmDialog(title='No Matching Deformable Objects',
							message='Please select two objects that have the same topology and vertex order.')
			return
		paint_neutral.paint_weight_pose(meshes[0], meshes[1], open_weights_tool=self.open_weight_tool.isChecked())
	# STOP


	def finish_button(self):
		name = (self.mesh_name_lineEdit.text()).strip()
		if name == '' or not name:
			name = 'NEW_POSE'
		new_pose = paint_neutral.paint_weight_pose_finish(pose_name=name)
		pm.select(new_pose)
	# STOP

	def cancel(self):
		paint_neutral.cancel_paint_weight_pose()

	def reset_scene(self):
		paint_neutral.reset_scene()


def show_ui():

	ui = PaintPoseUI()
	ui.show()


# STOP
