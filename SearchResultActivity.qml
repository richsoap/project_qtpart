import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4
import user.DataSwapper 1.0

ApplicationWindow {
    id:root
    visible: false
    width: Screen.width
    height: Screen.height

    DataSwapper {
        id: dataSwapper
    }

    TitleBar {
        id: title
        theroot: root
        titleText: "SetFromDate"
    }
    MouseArea {
        anchors.centerIn: title
        height: title.height
        width: parent.width * 0.6
        onClicked: {
            root.close();
        }
    }//ListView and other parts can be written in a another file,so that make it easier to use

    ListView {
        id: listView
        anchors.top: title.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        clip: true
        model: theModel
        delegate: cardsDelegate

    }

    ListModel {
        id: theModel
    }
    Component {
        id: cardsDelegate
        Rectangle {
            id: wrapper
            property var index: cardIndex
            width: root.width
            height: 80

            Image {
                id: itemImage
                source: cardImg
                height: 60
                width: 100
                anchors.margins: 10
                anchors.left: parent.left
            }
            Text {
                id: itemDate
                text: cardDate
                font.pixelSize: 10
                anchors.top: parent.top
                anchors.left: itemImage.right
                anchors.topMargin: 10
            }
            Text {
                id: itemDetial
                text: cardDetial
                font.pixelSize: 9
                anchors.topMargin: 10
                anchors.top: itemDate.bottom
                anchors.left: itemImage.right//Important Case: too many words
            }
        }
    }

    function updateTitleText() {
        var newtitle = dataSwapper.getKeyWords();
        title.titleText = newtitle;
        theModel.clear();
        theModel.sync();
        dataSwapper.searchData();
        getMoreElement();
    }
    function getMoreElement() {
        var cardDate,cardDetail,cardSrc,cardIndex;
        for(var i = 0;i < 15;i ++) {
            cardDate = dataSwapper.getDate();
            cardDetail = dataSwapper.getDetail();
            cardSrc = dataSwapper.getSrc();
            cardIndex = dataSwapper.getIndex();
            if(cardDate === null) {
                break;
            }
            theModel.append({"cardImg":cardSrc.toString(),"cardDate":cardDate,"cardDetial":cardDetail,"cardIndex":cardIndex});
        }
        theModel.sync()
    }
}
