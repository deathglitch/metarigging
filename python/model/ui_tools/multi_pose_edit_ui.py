import pymel.core as pm
import maya.cmds as cmds

import PySide2.QtCore as qtcore
from PySide2 import QtWidgets
import qtutils.qtutils as MetaWindow
import model.tools.multi_edit_pose as multi_edit_pose
import model.mesh
import metautil.lists

###########################################################################################################
#
###########################################################################################################
class MultiPoseSculptUI(MetaWindow.MetaWindow):
	VERSION = 1.0

	def __init__(self):
		MetaWindow.MetaWindow.__init__(self, MultiPoseSculptUI.__name__)

		self.setWindowTitle("Multi Pose Sculpt {0}".format(MultiPoseSculptUI.VERSION))

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
		# close.setStatusTip('Leave The App')
		close.triggered.connect(self.close)
		close.setToolTip('Closes the Paint Blend Shape Weights Tool.')
		self.menu.addAction(close)

		reset = QtWidgets.QAction('Reset Scene', self)
		reset.setStatusTip('Resets the scene.')
		reset.triggered.connect(self.reset_scene)
		# reset.setToolTip('Resets the scene and helps fix errors for the tool.')
		self.menu.addAction(reset)

		# layout
		main_layout = QtWidgets.QVBoxLayout()
		main_layout.setContentsMargins(5, 15, 5, 5)
		main_layout.setSpacing(5)
		main_layout.setAlignment(qtcore.Qt.AlignTop)
		self.setLayout(main_layout)

		# add stretching
		size_policy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		size_policy.setHorizontalStretch(1)
		size_policy.setVerticalStretch(1)

		top_layout = QtWidgets.QVBoxLayout()
		top_layout.setContentsMargins(5, 5, 5, 5)
		main_layout.addLayout(top_layout)

		# directions
		description_label = QtWidgets.QLabel('Multi Pose Edit Tool')
		#description_label.setSizePolicy(size_policy)
		main_layout.addWidget(description_label)

		# add base name line edit
		base_pose_v_layout = QtWidgets.QVBoxLayout()
		#base_pose_v_layout.addStretch(0)
		main_layout.addLayout(base_pose_v_layout)

		base_pose_layout = QtWidgets.QHBoxLayout()
		#base_pose_layout.addStretch(1)
		base_pose_v_layout.addLayout(base_pose_layout)

		base_pose_name_label = QtWidgets.QLabel('Base Mesh Name: ')
		base_pose_name_label.setSizePolicy(size_policy)
		base_pose_layout.addWidget(base_pose_name_label)

		self.base_pose_name_lineEdit = QtWidgets.QLineEdit()
		self.base_pose_name_lineEdit.setSizePolicy(size_policy)
		self.base_pose_name_lineEdit.setMinimumWidth(250)
		base_pose_layout.addWidget(self.base_pose_name_lineEdit)

		self.base_pose_name_pushButton = QtWidgets.QPushButton('<<<')
		self.base_pose_name_pushButton.setSizePolicy(size_policy)
		base_pose_layout.addWidget(self.base_pose_name_pushButton)

		spacer_01 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		base_pose_layout.addItem(spacer_01)

		# line
		line_layout = QtWidgets.QHBoxLayout()
		line_layout.setContentsMargins(5,5,5,5)
		main_layout.addLayout(line_layout)

		line_01 = QtWidgets.QFrame()
		line_01.setFrameShape(QtWidgets.QFrame.HLine)
		line_01.setFrameShadow(QtWidgets.QFrame.Sunken)
		line_layout.addWidget(line_01)

		# List widget layout
		list_widget_layout = QtWidgets.QHBoxLayout()
		main_layout.addLayout(list_widget_layout)

		self.poses_listWidget = QtWidgets.QListWidget()
		self.poses_listWidget.setSizePolicy(size_policy)
		self.poses_listWidget.setMinimumWidth(300)
		self.poses_listWidget.setMinimumHeight(300)
		list_widget_layout.addWidget(self.poses_listWidget)

		list_widget_b_layout = QtWidgets.QVBoxLayout()
		list_widget_layout.addLayout(list_widget_b_layout)

		self.add_poses_pushButton = QtWidgets.QPushButton('<<< Add Poses')
		self.add_poses_pushButton.setSizePolicy(size_policy)
		list_widget_b_layout.addWidget(self.add_poses_pushButton)

		spacer_poses = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		list_widget_b_layout.addItem(spacer_poses)

		self.start_pushButton = QtWidgets.QPushButton('<<< Start      ')
		self.start_pushButton.setSizePolicy(size_policy)
		list_widget_b_layout.addWidget(self.start_pushButton)

		self.finish_pushButton = QtWidgets.QPushButton('<<< Finish     ')
		self.finish_pushButton.setSizePolicy(size_policy)
		list_widget_b_layout.addWidget(self.finish_pushButton)

		spacer_cancel = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		list_widget_b_layout.addItem(spacer_cancel)

		self.cancel_pushButton = QtWidgets.QPushButton('<<< Cancel     ')
		self.cancel_pushButton.setSizePolicy(size_policy)
		list_widget_b_layout.addWidget(self.cancel_pushButton)

		spacer_02 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		list_widget_b_layout.addItem(spacer_02)

		self.clear_pushButton = QtWidgets.QPushButton('<<< Clear      ')
		self.clear_pushButton.setSizePolicy(size_policy)
		list_widget_b_layout.addWidget(self.clear_pushButton)

		spacer_03 = QtWidgets.QSpacerItem(40, 150, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
		list_widget_b_layout.addItem(spacer_03)
		# --------------------------------------------------------------------------
		# Signals
		# --------------------------------------------------------------------------
		self.base_pose_name_pushButton.clicked.connect(self.add_base_name)
		self.add_poses_pushButton.clicked.connect(self.add_poses_to_widget)
		self.start_pushButton.clicked.connect(self.enter_multi_mode)
		self.finish_pushButton.clicked.connect(self.exit_multi_mode)
		self.cancel_pushButton.clicked.connect(self.cancel_multi_mode)
		self.clear_pushButton.clicked.connect(self.poses_listWidget.clear)

	# --------------------------------------------------------------------------
	# SLOTS
	# --------------------------------------------------------------------------

	def add_base_name(self):
		base_mesh = cmds.ls(sl=True)
		if base_mesh:
			base_mesh = metautil.lists.first_in_list(base_mesh)
			self.base_pose_name_lineEdit.setText(base_mesh)
		return

	def add_poses_to_widget(self):
		poses = cmds.ls(sl=True)
		if poses:
			self.poses_listWidget.clear()
			self.poses_listWidget.addItems(poses)
		return

	def enter_multi_mode(self):
		if not self.poses_listWidget.currentItem():
			pm.confirmDialog( title='Select a Pose', message='Please select a pose from the ui list.', button=['Okay'], dismissString='Okay')
			return
		edited_mesh = self.poses_listWidget.currentItem().text()
		base_mesh = str(self.base_pose_name_lineEdit.text()).strip()
		poses = []
		for index in xrange(self.poses_listWidget.count()):
			pose = self.poses_listWidget.item(index).text()
			if pose != edited_mesh:
				poses.append(pose)

		multi_edit_pose.enter_multi_edit_mode(base_mesh=base_mesh, edited_mesh=edited_mesh, poses=poses)
		return

	def exit_multi_mode(self):
		multi_edit_pose.exit_multi_edit_mode()
		return

	def cancel_multi_mode(self):
		multi_edit_pose.cancel_multi_edit_mode()
		return

	def reset_scene(self):
		node = multi_edit_pose.get_edit_node()
		node_message = 'The network node was not found.\nNo Network nodes were deleted\n'
		deleted_meshes = 0
		deleted_blendnodes = 0
		if node:
			pm.delete(node)
			node_message = 'The network node was found and deleted.\n'
		meshes = [x.node() for x in pm.ls('*.network_connection', r=True, o=True, type=pm.nt.Transform)]
		if meshes:
			for mesh in meshes:
				mesh = model.mesh.Mesh(mesh)
				blendnodes = mesh.get_blendnodes()
				if blendnodes:
					delete_blendnodes = [x for x in blendnodes if 'parallel_multi_blendshape' in str(x) or 'multi_blendshape' in str(x)]
					deleted_blendnodes += len(delete_blendnodes)
					pm.delete(delete_blendnodes)
				mesh.deleteAttr('network_connection')
				if 'edit_this_mesh' in str(mesh) or 'see_edit_on_this_mesh' in str(mesh):
					pm.delete(mesh)
					deleted_meshes += 1

		pm.confirmDialog(title='Scene Reset', message='Scene Was Reset:\n'
											'{0}{1} Meshes had the connection attribute\n'
											'{2} Meshes were deleted.\n'
											'{3} Blendnodes were deleted'.format(node_message, len(meshes), deleted_meshes, deleted_blendnodes),
											button=['Okay'], defaultButton='Okay', dismissString='Okay')
		return

def show_ui():
	ui = MultiPoseSculptUI()
	ui.show()
