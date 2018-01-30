import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0

ApplicationWindow {
    visible: true
    width: Screen.width
    height: Screen.height
    title: qsTr("Hello World")
    //flags: Qt.Window | Qt.FramelessWindowHint

    SearchBar {
        anchors.centerIn: parent
    }

    Image {
        id: setting
        width: 35
        height: 35
        source: "qrc:/icon/icons/setting.png"
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {

            }
        }

    }

}

