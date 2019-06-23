import pymel.core as pm

import PySide2.QtCore as qtcore
import PySide2.QtGui as qtgui
from PySide2 import QtWidgets
import qtutils.qt_utils as MetaWindow

import model.mesh

class MirrorMeshToolUI(MetaWindow.MetaWindow):
	VERSION = 1.0

	def __init__(self):
		MetaWindow.MetaWindow.__init__(self, MirrorMeshToolUI.__name__)

		self.setWindowTitle("Mirror Blend Shape Mesh {0}".format(MirrorMeshToolUI.VERSION))
		QtWidgets.QToolTip.setFont(qtgui.QFont('SansSerif', 10))

		main_layout = QtWidgets.QVBoxLayout()
		main_layout.setContentsMargins(5, 5, 5, 5)
		main_layout.setSpacing(5)
		main_layout.setAlignment(qtcore.Qt.AlignTop)
		self.setLayout(main_layout)

		# description
		description_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(description_frame)

		description_label = QtWidgets.QLabel('Tool to mirror blend shape meshes')
		description_frame.addWidget(description_label)

		# mirror blend shape mesh text edit
		mirror_name_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(mirror_name_frame)

		self.mirror_name_lineEdit = QtWidgets.QLineEdit()
		mirror_name_frame.addWidget(self.mirror_name_lineEdit)

		# mirror blend shape mesh button
		mirror_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(mirror_frame)

		self.mirror_button = QtWidgets.QPushButton('Mirror Blend Shape Mesh')
		self.mirror_button.setToolTip('Mirror a blend shape mesh.  Select a neutral pose mesh (Base Mesh).\n'
		                         + 'Then select the mesh to me mirrored.')
		mirror_frame.addWidget(self.mirror_button)

		# mirror non-blendshape mesh
		mirror_non_frame = QtWidgets.QHBoxLayout()
		main_layout.addLayout(mirror_non_frame)

		mirror_non_button = QtWidgets.QPushButton('Mirror Mesh')
		mirror_non_button.setToolTip('Mirror a non blend shape mesh.')
		mirror_non_frame.addWidget(mirror_non_button)


		# --------------------------------------------------------------------------
		# Signals
		# --------------------------------------------------------------------------
		self.mirror_button.clicked.connect(self.mirror_blend_shape)


# --------------------------------------------------------------------------
# SLOTS
# --------------------------------------------------------------------------
	def mirror_blend_shape(self):
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
		mesh = model.mesh.Mesh(meshes[1])
		name = (self.mirror_name_lineEdit.text()).strip()
		if not name or name == '':
			name = 'mirrored_mesh'

		mesh.mirror(opposite_pose=name, base_mesh=meshes[0])
		return



def show_ui():
	ui = MirrorMeshToolUI()
	ui.show()


