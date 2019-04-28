#This relies on the get_maya_window() function, so make sure that this code has access to that.
"""
usage:
import metaui
metaui.ListExample().show()
"""

import PySide.QtCore as qtcore
import PySide.QtGui as qtgui
import qtutils

#If you put the .ui file for this example elsewhere, just change this path.
ui_path = (r"c:\metarigging\ui\example1.ui")
list_example_form, list_example_base = qtutils.load_ui_type(ui_path)
class ListExample(list_example_form, list_example_base):
    def __init__(self, parent=qtutils.get_maya_window()):
        super(ListExample, self).__init__(parent)
        self.setupUi(self)

        qtcore.QObject.connect(self.addItemPushButton, qtcore.SIGNAL("clicked()"), self.add_item)
        qtcore.QObject.connect(self.removeItemPushButton, qtcore.SIGNAL("clicked()"), self.remove_item)

    def add_item(self):
        """
        Appends a new item to the end of the listWidget.
        """
        item = qtgui.QListWidgetItem(self.listWidget)
        item.setText('Item #%s!'%self.listWidget.count())

    def remove_item(self):
        """
        Removes the last item from the listWidget.
        """
        count = self.listWidget.count()
        if count:
            self.listWidget.takeItem(count-1)