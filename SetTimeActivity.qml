import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4

Item {
    id:root
    anchors.fill: parent

    TitleBar {
        id: title
        titleText: "SetDate"
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
            id:hourList
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
            id:minuteList
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 60
            delegate: numberDelegate
            spacing: 5
            snapMode: ListView.SnapToItem
        }
    }
    Component.onCompleted: {
        hourList.positionViewAtIndex(Number(new Date().toLocaleTimeString(Qt.locale(),"hh")), ListView.Center);
        minuteList.positionViewAtIndex(Number(new Date().toLocaleTimeString(Qt.locale(),"mm")), ListView.Center);
    }
}
