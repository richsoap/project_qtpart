import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
ApplicationWindow {
    id:root
    visible: false
    width: Screen.width
    height: Screen.height

    CommonButton {
        id: commonButton
    }

    TitleBar {
        id: title
        theroot: root
        titleText: "Setting"
    }

    Button {
        id: storageButton
        width:parent.width
        height:100
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        style: CommonButton {
            iconsize: storageIcon.width
            lefttext: "wifi"
        }
        Image {
            id: storageIcon
            height: parent.height * 0.8
            width: height
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/icon/icons/SDCard.png"
        }
        StorageActivity {
            id: storageActivity
        }
        onClicked: {
            storageActivity.refresh()
            storageActivity.show()
        }
    }
    Button {
        id: wifiButton
        width:parent.width
        height:100
        anchors.top: storageButton.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Image {
            id: wifiIcon
            height: parent.height * 0.8
            width: height
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/icon/icons/wifi.png"
        }
        style: CommonButton {
            iconsize: wifiIcon.width
            lefttext: "Wifi"
        }
    }
    Button {
        id: timeButton
        width:parent.width
        height:100
        anchors.top: wifiButton.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        style: CommonButton {
            lefttext: "TimeSetting"
            iconsize: timeIcon.width
        }
        Image {
            id: timeIcon
            height: parent.height * 0.8
            width: height
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/icon/icons/time.png"
        }
        TimeSettingActivity {
            id: timeSettingActivity
        }

        onClicked: {
            timeSettingActivity.show()
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
        PoweroffActivity {
            id: poweroffActivity
        }

        onClicked: {
            poweroffActivity.show()
        }
    }

}
