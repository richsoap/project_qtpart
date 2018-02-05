import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0

ApplicationWindow {
    id:root
    visible: false
    width: Screen.width
    height: Screen.height
    title: qsTr("Hello World")
    //flags: Qt.Window | Qt.FramelessWindowHint


    Image {
        id: backButton
        source: "qrc:/icon/icons/back.png"
        width: 50
        height: width
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10
    }

    MouseArea {
        anchors.centerIn: backButton
        width: backButton.width
        height: backButton.height
        onClicked: {
            root.close()
        }
    }

    SearchBar {
        anchors.centerIn: parent
    }

}

