import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtQuick.Controls.Styles 1.4
import user.DataSwapper 1.0
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

        TextInput {
            width: parent.width - 22
            height: parent.height - 4
            id: putinText
            anchors.left: parent.left
            anchors.leftMargin: 13
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
        SearchResultActivity {
            id: searchResultActivity;
        }
        DataSwapper {
            id:dataSwapper;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                dataSwapper.setKeyWords(putinText.getText(0,100));
                searchResultActivity.updateTitleText();
                searchResultActivity.show();
            }
        }
    }

}

