import QtQuick 2.0

Rectangle {
    id: passip
    width: 150
    height: 25
    color: "#ffffff"
    property string password: textEdit1.text

    TextInput {
        id: textEdit1
        x: 0
        y: 0
        width: 150
        height: 25
        color: "black"
        text: ""
        passwordCharacter: "●"
        inputMask: ""
        opacity: 1
        font.family: "Courier"
        font.bold: true
        cursorVisible: false
        font.pixelSize: 15
        echoMode: TextInput.Password
        horizontalAlignment: Text.AlignLeft
        onVisibleChanged: {
            textEdit1.text = ""
            text1.text = "Password"
        }
    }

    MouseArea {
        id: mouseArea1
        x: 0
        y: 0
        width: 150
        height: 25
        visible: true
        opacity: 0
        onClicked: {

            errorBox2.visible = false
            errorBox3.visible = false
            text1.text = ""
            textEdit1.cursorVisible = true
            textEdit1.forceActiveFocus()
            if(textboxUname1.user_Name === ""){
                console.log("Enter username")                
                errorBox1.seterror = "[Enter username]"
                errorBox1.visible = true
            }
        }
    }

    Text {
        id: text1
        x: 0
        y: 0
        width: 150
        height: 25
        color: "#575656"
        text: qsTr("Password")
        font.bold: true
        font.family: "Courier"
        font.pixelSize: 15
    }
}
