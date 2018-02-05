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
        nextButtonSource: 'qrc:/icon/icons/ok.png'
    }
    Calendar {
        id: calender
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height - title.height
    }
}
