TARGET = nemoalarms
PLUGIN_IMPORT_PATH = org/nemomobile/alarms

TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += qml quick dbus

target.path = $$[QT_INSTALL_QML]/$$PLUGIN_IMPORT_PATH
INSTALLS += target

qmldir.files += $$_PRO_FILE_PWD_/qmldir
qmldir.path +=  $$target.path
INSTALLS += qmldir

CONFIG += link_pkgconfig
PKGCONFIG += timed-qt5 timed-voland-qt5

isEmpty(SRCDIR) SRCDIR = "."

SOURCES += $$SRCDIR/plugin.cpp \
    $$SRCDIR/alarmsbackendmodel.cpp \
    $$SRCDIR/alarmsbackendmodel_p.cpp \
    $$SRCDIR/enabledalarmsproxymodel.cpp \
    $$SRCDIR/alarmobject.cpp \
    $$SRCDIR/alarmhandlerinterface.cpp \
    $$SRCDIR/alarmdialogobject.cpp \
    $$SRCDIR/interface.cpp

HEADERS += $$SRCDIR/alarmsbackendmodel.h \
    $$SRCDIR/alarmsbackendmodel_p.h \
    $$SRCDIR/enabledalarmsproxymodel.h \
    $$SRCDIR/alarmobject.h \
    $$SRCDIR/alarmhandlerinterface.h \
    $$SRCDIR/alarmdialogobject.h \
    $$SRCDIR/interface.h
