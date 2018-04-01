import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import "."

ApplicationWindow {
    id: rootwindow
    visible: true
    width: Screen.width
    height: Screen.height

    Loader {
        id: appLoader
        anchors.fill: parent
        visible: true
        source: "Manager.qml"
        asynchronous: false
    }
}

