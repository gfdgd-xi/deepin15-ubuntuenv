#!/usr/bin/env python3
import sys
import PyQt5.QtWidgets as QtWidgets

app = QtWidgets.QApplication(sys.argv)
window = QtWidgets.QMainWindow()
widget = QtWidgets.QWidget()
layout = QtWidgets.QGridLayout()

programPath = QtWidgets.QLineEdit()
browser = QtWidgets.QPushButton("浏览……")
runProgramWithRoot = QtWidgets.QCheckBox("以 root 权限运行应用")
layout.addWidget(QtWidgets.QLabel("""你可以在兼容模式下运行程序"""), 0, 0, 1, 4)
layout.addWidget(QtWidgets.QLabel("程序路径："), 1, 0)
layout.addWidget(programPath, 1, 1, 1, 3)
#layout.addWidget(browser, 1, 3)

controlLayout = QtWidgets.QHBoxLayout()
cancelButton = QtWidgets.QPushButton("取消")
okButton = QtWidgets.QPushButton("确定")
controlLayout.addWidget(runProgramWithRoot)
controlLayout.addWidget(browser)
controlLayout.addWidget(cancelButton)
controlLayout.addWidget(okButton)
layout.addLayout(controlLayout, 2, 2, 1, 2)

widget.setLayout(layout)
window.setCentralWidget(widget)
window.show()
sys.exit(app.exec_())