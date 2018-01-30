import QtQuick 2.0

Item {
    id: root;
    width: 360;
    height: 26;

    Rectangle {
        id: putinRec;
        border.color: "lightsteelblue"
        color: "white"
        width: 300
        height: 26


        Image {
            id:dateSearch
            width:putinRec.height - 3
            height:width
            anchors.margins: 3
            source: "qrc:/icon/icons/date.png"
            anchors.right: putinRec.right
            anchors.verticalCenter:parent
            MouseArea {
                width: parent.width + 3
                height: width
                anchors.centerIn: parent
                onClicked: {
                    Qt.quit()
                }
            }
        }

        TextInput {
            width: parent.width - dateSearch.width - 22
            height: parent.height - 4
            id: putinText
            anchors.left: parent.left
            anchors.leftMargin: 13
            anchors.verticalCenter: parent
            text: "Please putin"
            color: "black"
            focus: true
            font.pixelSize: 18
            selectByMouse: true
            autoScroll: true
            clip: true
            maximumLength: 50
        }
    }


    Rectangle {
        color: "lightsteelblue"
        width: 60;
        height: 26;
        anchors.left: putinRec.right;

        Text {
            anchors.centerIn: parent
            id: searchButton
            text: "Search"
            color: "white"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                searchButton.text = putinText.getText(0,100)
            }
        }
    }

}

