import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0

ApplicationWindow {
    visible: true
    width: Screen.width
    height: Screen.height

    Rectangle {
        id: buttonGroup
        anchors.centerIn: parent
        width: 400
        height: 300
        Item {
            id: anch
            anchors.centerIn: parent
        }
        Button {
            id: searchButton
            width: 200
            height: 300
            text: "Search"
            anchors.right: anch.left
            anchors.top: parent.top
            SearchActivity {
                id: searchActivity
                visible: false
            }
            onClicked: {
                searchActivity.show()
            }
        }
        Button {
            id: dateButton
            width: 200
            height: 300
            text: "Date"
            anchors.left: anch.right
            anchors.top: parent.top
        }
    }
    Rectangle {
        anchors.bottom: buttonGroup.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: 400
        height: 200
        Text {
            id: timeLabel
            color: "black"
            anchors.centerIn: parent
            text: "10:32"
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
        SettingActivity {
            id: settingActivity
            visible: false
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                settingActivity.show()
            }
        }
    }

}

