import QtQuick 2.0

Rectangle {
    id: errorBox
    width: 95
    height: 17
    color: "#00000000"
    border.color: "#00000000"
    property string error_msg: text1.text
    property string seterror:""

    Text {
        id: text1
        x: 0
        y: 0
        width: 95
        height: 10
        color: "red"
        text: seterror
        z: 1
        visible: true
        font.family: "Courier"
        font.bold: false
        font.italic: false
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 11
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 95
        height: 10
        color: "#970404"
        visible: false
        border.color: "#970404"
    }

    Image {
        id: image1
        x: 65
        y: 0
        width: 30
        height: 17
        visible: false
        source: "arrow.png"
    }
}
