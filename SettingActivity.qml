import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
ApplicationWindow {
    id:root
    visible: true
    width: Screen.width
    height: Screen.height

    Component {
        ButtonStyle {
            id: itemStyle
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 25
                border.width: control.activeFocus ? 2 : 1
                border.color: "#888"
                radius: 4
                gradient: Gradient {
                   GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
                   GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
                }
            }
        }
    }

    Rectangle {
        id: title
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 70
        color: "gray"
        Image {
            id: backbutton
            width:parent.height * 0.7
            height:width
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.verticalCenter: parent.verticalCenter
            source: 'qrc:/icon/icons/back.png'
        }
        Text {
            id:titleText
            anchors.left: backbutton.right
            anchors.verticalCenter: parent.verticalCenter
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
                root.close()
            }
        }
    }
    Button {
        id: storageButton
        width:parent.width
        height:100
        text: "Storage"
        iconSource: "urc:/icon/icons/SDCard.png"
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }

    Rectangle {
        id: wifiRec
        //anchors.top: storageRec.bottom
        anchors.top: storageButton.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 100
        border.width: 2
        Image {
            id:wifiImg
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            width: parent.height * 0.7
            height: width
            source: "qrc:/icon/icons/wifi.png"
        }
        Text {
            id: wifiText
            anchors.left: wifiImg.right
            anchors.leftMargin: backbutton.leftMargin
            anchors.verticalCenter: parent.verticalCenter
            text: "Wifi"
            font.pixelSize: parent.height *0.8
        }
    }
    Rectangle {
        id: timeRec
        anchors.top: wifiRec.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 100
        border.width: 2
        Image {
            id:timeImg
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            width: parent.height * 0.7
            height: width
            source: "qrc:/icon/icons/time.png"
        }
        Text {
            id: timeText
            anchors.left: timeImg.right
            anchors.leftMargin: backbutton.leftMargin
            anchors.verticalCenter: parent.verticalCenter
            text: "Time"
            font.pixelSize: parent.height *0.8
        }
    }

    Button {
        id:poweroffButtom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        width: 400
        height: 150
        style: ButtonStyle {
                background: Rectangle {
                    id: poweroffBackground
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: control.activeFocus ? 2 : 1
                    border.color: "#ccc"
                    color: control.pressed? "#000" : "#f00"
                    radius: 4
                    Text {
                        text: "Poweroff"
                        font.pixelSize: 80
                        color: "#fff"
                        anchors.centerIn: parent
                    }
                }
            }
    }

}
