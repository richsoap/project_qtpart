TEMPLATE = app

QT += qml quick widgets
QT += qml

SOURCES += main.cpp \
    dataswapper.cpp

RESOURCES += qml.qrc \
    icons.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    ../../../下载/setting.png \
    README.md

HEADERS += \
    dataswapper.h

