import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2
import QtQuick.Controls.Styles 1.4
import user.DataSwapper 1.0


Rectangle {
    id: root
    //property bool newDataAvaliable: true;
    DataSwapper {
        id: dataSwapper
    }

    ListView {
        id: listView
        anchors.fill: parent
        clip: true
        model: theModel
        delegate: cardsDelegate
        footer: footerComponent
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
                anchors.left: wrapper.left
            }
            Text {
                id: itemDate
                text: cardDate
                font.pixelSize: 10
                anchors.top: wrapper.top
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

    Component {
        id: footerComponent
        Rectangle {
            id: footerRec
            width: 100
            height:60
            color: "red"
            Text {
                text: root.newDataAvaliable? "Click for more": "No more";
                font.pixelSize: 10
                anchors.top: parent.top
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    getMoreElement();
                }
            }
        }
    }



    ListModel {
        id: theModel
    }

    WorkerScript {
        id: myWorker
        source: "ResultListWorkerScript.js"
    }
    function initList() {
        myWorker.sendMessage({'target':theModel,'action':'init'});
        getMoreElement();
    }
    function getMoreElement() {
        var cardDate,cardDetail,cardSrc,cardIndex;
        for(var i = 0;i < 15;i ++) {
            cardDate = dataSwapper.getDate();
            cardDetail = dataSwapper.getDetail();
            cardSrc = dataSwapper.getSrc();
            cardIndex = dataSwapper.getIndex();
            if(cardIndex === -1) {
                break;
                //root.newDataAvaliable = false;
            }
            myWorker.sendMessage({'target':theModel,'action':'add','cardDate':cardDate,'cardDetail':cardDetail,'cardSrc':cardSrc,'cardIndex':cardIndex});
        }
    }
}
