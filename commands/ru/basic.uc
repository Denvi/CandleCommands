[
    {
        "hint": "Обнулить XY",
        "imageName": "axis_zero.png",
        "imageBase64": "",
        "type": "0",
        "code": "G92 X0 Y0"
    },
    {
        "hint": "Обнулить Z",
        "imageName": "zero_z.png",
        "imageBase64": "",
        "type": "0",
        "code": "G92 Z0"
    },
    {
        "hint": "Z-щуп",
        "imageName": "search_for_z.png",
        "imageBase64": "",
        "type": "1",
        "code": "const distance = 30;    // максимальное расстояние поиска\nconst offset = 0;    // высота датчика\nconst lift = 5;    // подъем инструмента после операции\nconst seekRate = 100;    // быстрая подача\nconst feedRate = 10;    // медленная подача\n\napp.device.storeParserState();\napp.device.sendCommands([\n    \"G21 G91\",\n    \"G38.2 Z-\" + distance + \" F\" + seekRate,\n    \"G0 Z1\",\n    \"G38.2 Z-2 F\" + feedRate,\n    \"G92 Z\" + offset,\n    \"G91 G0 Z\" + lift\n]);\napp.device.waitResponses();\napp.device.restoreParserState();"
    },
    {
        "hint": "Безопасная Z",
        "imageName": "safe_z.png",
        "imageBase64": "",
        "type": "0",
        "code": "G53 G90 G0 Z0"
    },
    {
        "hint": "Рабочий ноль",
        "imageName": "origin.png",
        "imageBase64": "",
        "type": "0",
        "code": "G90 G0 X0 Y0"
    },
    {
        "hint": "Машинный ноль",
        "imageName": "axis_return.png",
        "imageBase64": "",
        "type": "0",
        "code": "G53 G90 G0 X0 Y0"
    },
    {
        "hint": "Координаты",
        "imageName": "run.png",
        "imageBase64": "",
        "type": "1",
        "code": "script.importExtension(\"qt.widgets\");\n\nconst dialog = new QDialog(app.window);\nconst layoutMain = new QVBoxLayout(dialog);\nconst layoutCoords = new QGridLayout();\nconst layoutButtons = new QHBoxLayout();\nconst lblX = new QLabel(\"X:\", dialog);\nconst lblY = new QLabel(\"Y:\", dialog);\nconst sbpX = new QSpinBox(dialog);\nconst sbpY = new QSpinBox(dialog);\nconst radAbsolute = new QRadioButton(\"Абсолютные (G90)\", dialog);\nconst radRelative = new QRadioButton(\"Относительные (G91)\", dialog);\nconst radMachine = new QRadioButton(\"Машинные (G53)\", dialog);\nconst cmdMove = new QPushButton(\"Переместить\", dialog);\nconst cmdClose = new QPushButton(\"Закрыть\", dialog);\n\nlayoutCoords.addWidget(lblX, 0, 0);\nlayoutCoords.addWidget(lblY, 1, 0);\nlayoutCoords.addWidget(sbpX, 0, 1);\nlayoutCoords.addWidget(sbpY, 1, 1);\n\nlayoutButtons.addWidget(cmdMove, 0, 0);\nlayoutButtons.addWidget(cmdClose, 0, 0);\n\nlayoutMain.addLayout(layoutCoords);\nlayoutMain.addWidget(radAbsolute, 0, 0);\nlayoutMain.addWidget(radRelative, 0, 0);\nlayoutMain.addWidget(radMachine, 0, 0);\nlayoutMain.addLayout(layoutButtons);\n\nsbpX.minimum= -10000;\nsbpX.maximum = 10000;\nsbpY.minimum= -10000;\nsbpY.maximum = 10000;\n\nradAbsolute.checked = true;\n\ncmdMove.autoDefault = true;\ncmdMove.clicked.connect(function() {\n    app.device.sendCommand(\n        (radAbsolute.checked\n            ? \"G90\"\n            : radRelative.checked\n                ? \"G91\"\n                : \"G53\")\n        + \" G0\"\n        + \" X\" + sbpX.value\n        + \" Y\" + sbpY.value\n    );\n});\n\ncmdClose.clicked.connect(function() {\n    dialog.reject();\n});\n\ndialog.setWindowTitle(\"Перемещение по координатам\");\ndialog.setFixedSize(dialog.sizeHint);\ndialog.exec();"
    }
]