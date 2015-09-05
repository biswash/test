import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rect
    width: 70
    height: 25
    color: "#4d564f"
    border.color: "#4d564f"
    property string btnname: "button"
    property string btncolor: "#4d564f"
    property string loadstate: "State1"
    property string auth_uid: "admin"
    property string auth_pwd: "admin"


    MouseArea {
        id: mousearea
        clip: false
        anchors.fill: parent

        onPressed: {
            txt.color = "white"
            txt.font.pointSize = 10.7
            txt.font.bold = true
            rect.color = "#2b2b2b"

        }

        onReleased: {
            txt.color = "white"
            txt.font.pointSize = 10
            txt.font.bold = false
        }

        onClicked: {
            if(txt.text == "Login"){
                rect.color = "#4d564f"
                if(textboxUname1.user_Name === ""){
                    console.log("[Enter username]")
                    errorBox1.width = 95
                    errorBox1.seterror = "[Enter username]"
                    errorBox1.visible = true
                }

                if(textboxPwd1.password == ""){
                    console.log("Enter password")
                    errorBox2.width = 95
                    errorBox2.seterror = "[Enter password]"
                    errorBox2.visible = true
                }
                else {

                    if((textboxUname1.user_Name == auth_uid) && (textboxPwd1.password == auth_pwd)){
                        root.load = true
                        image1.visible = true
                        slide1.profName = textboxUname1.user_Name
                        console.log("Logged in")
                    }
                    else {
                        console.log("Unauthorized Entry attempt")
                        errorBox3.visible = true
                        errorBox3.seterror = "[Authentication failed]"

                    }
                }
            }

            if(txt.text == "Messages"){

                root.state = "State2"
                console.log("Recent Messages")
            }
            if(txt.text == "Files"){

                root.state = "State3"
                console.log("Recent Files")
            }
            if(txt.text == "Shares"){

                root.state = "State4"
                console.log("Recent Shares")
            }
        }
    }
    Text {
        id: txt
        color: "white"
        anchors.centerIn: parent
        text: btnname
        font.italic: false
        font.bold: false
        font.pointSize: 10
        font.family: "Courier"
        horizontalAlignment: Text.AlignHCenter
    }
}
