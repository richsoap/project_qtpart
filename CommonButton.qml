import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

    ButtonStyle {
        property int fontsize: 25
        property int fontmargin: 10
        property int iconsize: 0
        property string lefttext: "Name"
        id: commonButton
        background: Rectangle {
            border.width: 2
            color:control.pressed? "gray" : "white"
            Text {
                id: leftText
                text : lefttext
                font.pixelSize: fontsize
                anchors.left: parent.left
                anchors.leftMargin: fontmargin + iconsize
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
