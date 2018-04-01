import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0

Item {
    id:root
    anchors.fill: parent
    //flags: Qt.Window | Qt.FramelessWindowHint

    function init() {
        print("init in Search");
    }
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
            manager.prePage();
        }
    }

    SearchBar {
        anchors.centerIn: parent
    }
}

