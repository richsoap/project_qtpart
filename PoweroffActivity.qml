import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id:root
    anchors.fill: parent
    Rectangle {
        color: "black"
        opacity: 0.5
        anchors.fill: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            manager.prePage();
        }
    }

    Component {
        id: commonButton
        ButtonStyle {
            id: commonStyle
            background: Rectangle {
                border.width: 3
                border.color: "#ccc"
                color:control.pressed? "#222" : "#555"
                radius:75
            }
         }
    }

    Rectangle {
        id: anch
        anchors.centerIn: parent
        width: 2
        height: 200
        color: "#ccc"
    }

    Button {
        id: poweroffButton
        anchors.right: anch.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 25
        width: 150
        height: 150
        style: commonButton
        Text {
            text: "Poweroff"
            font.pixelSize: 25
            color: "#fff"
            anchors.centerIn: parent
        }
        onClicked: {
            Qt.quit()
        }
    }
        Button {
            id: rebootButton
            anchors.left: anch.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 25
            width: 150
            height: 150
            style: commonButton
            Text {
                text: "Reboot"
                font.pixelSize: 25
                color: "#fff"
                anchors.centerIn: parent
            }
            onClicked: {

            }
        }

}
