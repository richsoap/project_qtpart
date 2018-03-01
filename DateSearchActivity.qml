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
    }

    function updateTitleText() {
        var newtitle = dataSwapper.getDateTitle();
        title.titleText = newtitle;
    }
}
