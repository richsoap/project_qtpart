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
    DataSwapper {
        id:dataSwapper
    }

    TitleBar {
        id: title
        titleText: "getResult"
    }
    MouseArea {
        anchors.centerIn: title
        height: title.height
        width: parent.width * 0.6
        onClicked: {
            manager.popToPage("SetFromDateActivity.qml");
        }
    }//ListView and other parts can be written in a another file,so that make it easier to use
    ResultList {
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        id: resultList;
    }

    Component.onCompleted:  {
        var newtitle = dataSwapper.getDateWords();
        title.titleText = newtitle;
        dataSwapper.searchData();
        resultList.initList();

    }
}
