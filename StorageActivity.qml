import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import QtCharts 2.2

Item {
    id:root
    anchors.fill: parent
    function init() {}

    TitleBar {
        id:title
        titleText: "Storage"
    }

    ChartView {
        id: chart
        antialiasing: true
        anchors.top: title.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: 500
        height: 500

        PieSeries {
            id: pieSeries
            PieSlice {
                id: voidSlice
                label: "Void"
                value: 10
                onClicked: {
                    exploded = true;
                    videoSlice.exploded = false;
                    databaseSlice.exploded = false;
                    value = value + 2;
                }
            }
            PieSlice {
                id: videoSlice
                label: "Video"
                value: 10
                onClicked: {
                    exploded = true;
                    voidSlice.exploded = false;
                    databaseSlice.exploded = false;
                    value = value + 2;
                }
            }
            PieSlice {
                id: databaseSlice
                label: "DataBase"
                value: 10
                onClicked: {
                    exploded = true;
                    videoSlice.exploded = false;
                    voidSlice.exploded = false;
                    value = value + 2;
                }
            }
        }
    }

    Flickable {
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height
        anchors.top: chart.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: image
            text: "Just for test"
            font.pixelSize: 20
        }
    }
    Component.onCompleted: {

    }

    function refresh() {
        pieSeries.find("Void").value = pieSeries.find("Void").value + 2;
        pieSeries.find("Void").exploded = true;
    }
}

