import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4

ApplicationWindow {
    id:root
    visible: false
    width: Screen.width
    height: Screen.height

    TitleBar {
        id: title
        theroot: root
        titleText: "SetDate"
        //nextButtonSource: 'qrc:/icon/icons/ok.png'
    }
    Text {
        id: divider
        text: ":"
        font.pixelSize: 50
        anchors.centerIn: parent
    }
    Component {
        id: numberDelegate
        Rectangle {
            width: 40
            height: 40
            color: "white"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 40
                text: index
            }
        }
    }
    Rectangle {
        width: 80
        height: 80
        color: "white"
        anchors.right: divider.left
        anchors.verticalCenter: divider.verticalCenter
        ListView {
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 24
            delegate: numberDelegate
            spacing: 5
            snapMode: ListView.SnapToItem
        }
    }
    Rectangle {
        width: 80
        height: 80
        color: "white"
        anchors.left: divider.right
        anchors.verticalCenter: divider.verticalCenter
        ListView {
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 60
            delegate: numberDelegate
            spacing: 5
            snapMode: ListView.SnapToItem
        }
    }
}
