import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import "."
Item{
    anchors.fill: parent
    property var locale: Qt.locale()
    function init() {}

   Item {
        id: buttonGroup
        anchors.centerIn: parent
        width: 400
        height: 200
        Item {
            id: anch
            anchors.centerIn: parent
        }
        Button {
            id: searchButton
            width: 150
            height: 150
            anchors.margins: 25
            text: "Search"
            anchors.right: anch.left
            anchors.top: parent.top
            style: ButtonStyle {
                    background: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 75
                    }
                }
            onClicked: {
                manager.showPage("SearchActivity.qml");
            }
        }
        Button {
            id: dateButton
            anchors.margins: 25
            width: 150
            height: 150
            text: "Date"
            anchors.left: anch.right
            anchors.top: parent.top
            onClicked: {
                manager.showPage("SetFromDateActivity.qml");
            }
            style: ButtonStyle {
                    background: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 75
                    }
                }
        }
    }
    Rectangle {
        anchors.bottom: buttonGroup.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: 400
        height: 200
        border.width: 0
        Text {
            id: timeLabel
            color: "black"
            anchors.centerIn: parent
            text: ""
            font.pixelSize: 100

        }
    }
    Image {
        id: setting
        width: 35
        height: 35
        source: "qrc:/icon/icons/setting.png"
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                manager.showPage("SettingActivity.qml");
            }
        }
    }

    Timer {
        interval: 500;
        running: true;
        repeat: true;
        onTriggered: timeLabel.text = (new Date().toLocaleTimeString(Qt.locale(),"hh:mm"));
    }
}
