import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4
import user.DataSwapper 1.0

Item {
    id:root
    visible: true
    anchors.fill: parent
    property var fromData

    TitleBar {
        id: title
        titleText: "SetToDate"
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
            DateSearchActivity {
                id: dateSearchActivity
            }

            onClicked: {
                var selectFromDate = calender.selectedDate;
                dataSwapper.setFromDate(selectFromDate);
                manage.prePage();
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
    function setDate() {
        var selectToDate = calender.selectedDate;
        dataSwapper.setToDate(selectToDate);
    }
}
