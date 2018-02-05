import QtQuick 2.0

Rectangle {
    property var theroot
    property string titleText: "Test"
    property string nextButtonSource
    property var nextButtonOnClick
    anchors.top: theroot.top
    anchors.horizontalCenter: theroot.horizontalCenter
    height: 70
    width: theroot.width
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
    Image {
        id: nextbutton
        width: parent.height * 0.7
        height:width
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.verticalCenter: parent.verticalCenter
        source: nextButtonSouce
    }
    Text {
        id:titleText
        anchors.centerIn: parent
        font.pixelSize: parent.height * 0.8
        text: "Setting"
        color: "black"
    }
    MouseArea {
        id:backArea
        anchors.centerIn: backbutton
        width:backbutton.width
        height:backbutton.height
        onClicked: {
            theroot.close()
        }
    }
    MouseArea {
        id: nextArea
        anchors.centerIn: nextbutton
        width: nextbutton.width
        height: nextbutton.height
        onClicked: nextButtonOnClick
    }
}
