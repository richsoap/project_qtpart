import QtQuick 2.0

Rectangle {
    property string titleText: "Test"
    anchors.top: parent.top
    anchors.horizontalCenter: parent.horizontalCenter
    height: 70
    width: parent.width
    color: "gray"
    Image {
        id: backbutton
        width: parent.height * 0.7
        height:width
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.verticalCenter: parent.verticalCenter
        source: 'qrc:/icon/icons/back.png'
    }
    Text {
        id:titleTxt
        anchors.centerIn: parent
        font.pixelSize: parent.height * 0.8
        text: titleText
        color: "black"
    }
    MouseArea {
        id:backArea
        anchors.centerIn: backbutton
        width:backbutton.width
        height:backbutton.height
        onClicked: {
            manager.prePage();
        }
    }
}
