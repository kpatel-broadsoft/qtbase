import qbs

QtExample {
    name: "mv_headers"
    condition: Qt.widgets.present

    Depends { name: "Qt.widgets"; required: false }

    files: [
        "main.cpp",
        "mymodel.cpp",
        "mymodel.h",
    ]
}