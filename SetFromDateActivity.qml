import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4
import user.DataSwapper 1.0

Item {
    id:root
    anchors.fill: parent

    TitleBar {
        id: title
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
                var selectFromDate = calender.selectedDate;
                dataSwapper.setFromDate(selectFromDate);
                manager.showPage("SetToDateActivity.qml");
            }
        }
    }
    DataSwapper {
        id: dataSwapper
    }

    Calendar {
        id: calender
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height - title.height
    }

}
