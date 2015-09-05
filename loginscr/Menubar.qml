import QtQuick 2.0

Rectangle {
    id: menubar
    width: 50
    height: 200
    color: "black"
    property string previous_State: "value"
    Behavior on y{
        NumberAnimation{ duration: 500}
    }


    MouseArea {
        id: mouseArea_mydesk
        x: 0
        y: 0
        width: 50
        height: 50
        onPressed:
            rectangle1.visible = true
        onReleased:
            rectangle1.visible = false
        Image {
            id: image1
            x: 10
            y: 10
            width: 30
            height: 30
            source: "MYDESK.png"
        }

        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 50
            height: 50
            color: "#d4d4d4"
            z: -1
            opacity: 0.2
            visible: false
            border.width: 0
        }
    }

    MouseArea {
        id: mouseArea_Recent
        x: 0
        y: 50
        width: 50
        height: 50
        onPressed:
            rectangle2.visible = true
        onReleased:
            rectangle2.visible = false
        Image {
            id: image2
            x: 10
            y: 10
            width: 30
            height: 30
            source: "recent.png"
        }

        Rectangle {
            id: rectangle2
            x: 0
            y: 0
            width: 50
            height: 50
            color: "#d4d4d4"
            z: -1
            opacity: 0.2
            visible: false
        }
    }

    MouseArea {
        id: mouseArea_Settings
        x: 0
        y: 100
        width: 50
        height: 50
        onPressed:
            rectangle3.visible = true
        onReleased:
            rectangle3.visible = false
        onClicked: {
            previous_State = root.state
            root.state = "State7"
        }
        Image {
            id: image3
            x: 10
            y: 10
            width: 30
            height: 30
            source: "settings.png"
        }

        Rectangle {
            id: rectangle3
            x: 0
            y: 0
            width: 50
            height: 50
            color: "#d4d4d4"
            z: -1
            opacity: 0.2
            visible: false
        }
    }

    MouseArea {
        id: mouseArea_signout
        x: 0
        y: 150
        width: 50
        height: 50
        visible: true
        onPressed:
            rectangle4.visible = true
        onReleased:
            rectangle4.visible = false
        onClicked: {            
            root.state = "State5"
//            textboxUname1.user_Name = ""
//            textboxPwd1.password = ""
            errorBox3.visible = false
        }

        Image {
            id: image4
            x: 10
            y: 10
            width: 30
            height: 30
            source: "Logout.png"
        }

        Rectangle {
            id: rectangle4
            x: 0
            y: 0
            width: 50
            height: 50
            color: "#d4d4d4"
            z: -1
            opacity: 0.2
            visible: false
        }
    }

    MouseArea {
        id: mouseArea1
        x: 20
        y: -30
        width: 30
        height: 30
        z: 1

        onPressed:
            rectangle5.visible = true

        onReleased: {
            rectangle5.visible = false

            if(text1.text == "Click a Tab"){
                root.state = "State1"
            }
            if(text1.text == "Recent Messages"){
                root.state = "State2"
            }
            if(text1.text == "Recent Files"){
                root.state = "State3"
            }
            if(text1.text == "Recent Shares"){
                root.state = "State4"
            }
        }        
    }




}
