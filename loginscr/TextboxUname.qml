import QtQuick 2.0

Rectangle {
    id: unameip
    width: 150
    height: 25
    color: "#ffffff"
    property string user_Name: textEdit1.text

    TextInput {
        id: textEdit1
        x: 0
        y: 0
        width: 150
        height: 25
        color: "black"
        text: ""
        selectionColor: "#7f7dfe"
        font.family: "Courier"
        font.bold: true
        cursorVisible: false
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: 15
        onVisibleChanged: {
            textEdit1.text = ""
            text1.text = "Username"
        }
    }

    MouseArea {
        id: mouseArea1
        x: 0
        y: 0
        width: 150
        height: 25
        opacity: 0
        onClicked: {
            errorBox1.visible = false
            errorBox3.visible = false
            textEdit1.cursorVisible = true
            text1.text = ""
            textEdit1.forceActiveFocus()

        }
    }

    Text {
        id: text1
        x: 0
        y: 0
        width: 150
        height: 25
        color: "#575656"
        text: qsTr("Username")
        font.bold: true
        font.family: "Courier"
        font.pixelSize: 15
    }

}
