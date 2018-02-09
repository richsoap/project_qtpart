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
        titleText: "SetFromDate"
        Image {
            id: nextbutton
            width: parent.height * 0.7
            height:width
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.verticalCenter: parent.verticalCenter
            source: 'qrc:/icon/icons/ok.png'
        }
        MouseArea {
            id: nextArea
            anchors.centerIn: nextbutton
            width: nextbutton.width
            height: nextbutton.height
            onClicked: {
                root.close()
            }
        }
    }
    Calendar {
        id: calender
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height - title.height
    }
}
