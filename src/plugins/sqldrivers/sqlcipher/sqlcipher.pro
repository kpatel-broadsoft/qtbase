TARGET = qsqlcipher

HEADERS = ../../../sql/drivers/sqlite/qsql_sqlite_p.h
SOURCES = smain.cpp \
    ../../../sql/drivers/sqlite/qsql_sqlite.cpp
OTHER_FILES += sqlite.json

SQLCIPHER_DIR = $$(SQLCIPHER_DIR)
isEmpty(SQLCIPHER_DIR) {
    error(Environment variable SQLCIPHER_DIR is not set.)
}

INCLUDEPATH += $${SQLCIPHER_DIR}/include/sqlcipher

win32: {
    CONFIG(release, debug|release) {
        LIBS += $${SQLCIPHER_DIR}/lib/debug/libsqlcipher.lib
    } else {
        LIBS += $${SQLCIPHER_DIR}/lib/release/libsqlcipher.lib
    }
    LIBS += -llibeay32
}
unix {
    LIBS += $${SQLCIPHER_DIR}/lib/libsqlcipher.a
    LIBS += -lcrypto
}

PLUGIN_CLASS_NAME = QSQLCipherDriverPlugin
include(../qsqldriverbase.pri)
