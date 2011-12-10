unix {
SOURCES +=\
    $$PWD/qunixeventdispatcher_qpa.cpp\
    $$PWD/qgenericunixeventdispatcher.cpp\

HEADERS +=\
    $$PWD/qunixeventdispatcher_qpa_p.h\
    $$PWD/qgenericunixeventdispatcher_p.h\
}

contains(QT_CONFIG, glib) {
    SOURCES +=$$PWD/qeventdispatcher_glib.cpp
    HEADERS +=$$PWD/qeventdispatcher_glib_p.h
    QMAKE_CXXFLAGS += $$QT_CFLAGS_GLIB
    LIBS_PRIVATE += $$QT_LIBS_GLIB
}
