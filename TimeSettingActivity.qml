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
    property var usingWeb : true

    TitleBar {
        id: title
        theroot: root
        titleText: "TimeSetting"
    }
    Button {
        id: fromWeb
        width: parent.width
        height: 100
        style: CommonButton {
            lefttext: "Using Web Time"
        }

        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: usingWeb? "Yes" : "No"
            font.pixelSize: commonButton.fontsize
            anchors.right: parent.right
            anchors.rightMargin: commonButton.fontmargin
            anchors.verticalCenter: parent.verticalCenter
        }
        onClicked: {
            if(usingWeb) {
                usingWeb = false
            }
            else {
                usingWeb = true
            }
        }
    }

    Button {
        id: selectDate
        width: parent.width
        height: 100
        visible: !usingWeb
        style: CommonButton {
            lefttext: "SelectDate"
        }
        Text {
            text: "18.10.5"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: CommonButton.fontmargin
        }
        SetDateActivity {
            id: setDateActivity
        }
        onClicked: {
            setDateActivity.show()
        }

        anchors.top: fromWeb.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Button {
        id: selectTime
        width: parent.width
        height: 100
        visible: !usingWeb
        style: CommonButton {
            lefttext: "SelectTime"
        }
        SetTimeActivity {
            id: setTimeActivity
        }
        onClicked: {
            setTimeActivity.show()
        }

        anchors.top: selectDate.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

   /* Rectangle {
        width: 80
        height: 160
        color: "white"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        ListView {
            anchors.fill: parent
            anchors.margins: 20
            clip: true
            model: 100
            orientation: ListView.Vertical
            delegate: numberDelegate
            snapMode: ListView.SnapToItem
            spacing: 5
        }

        Component {
            id: numberDelegate

            Rectangle {
                id: delegateRec
                width: 40
                height: 40
                color: "lightGreen"
                Text {
                    anchors.centerIn: parent
                    font.pixelSize: 10
                    text: index
                }
            }
        }
    }*/
}
