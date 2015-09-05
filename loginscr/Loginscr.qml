import QtQuick 2.3
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    width: 290
    height: 415
    color: "#c7c4b7"
    property bool load: false

    MouseArea {
        id: scrnmsearea
        opacity: 1
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked: {

        }


        Item {
            id: item1
            x: 0
            y: 114
            width: 290
            height: 301
            visible: false

            Button {
                id: button1
                x: 49
                y: 125
                width: 192
                height: 25
                radius: 5
                btnname: "Login"
            }

            TextboxUname {
                id: textboxUname1
                x: 49
                y: 16
                width: 192
                height: 25
                radius: 2
            }

            TextboxPwd {
                id: textboxPwd1
                x: 49
                y: 62
                width: 192
                height: 25
                radius: 2
            }

            Image {
                id: image1
                x: 124
                y: 184
                width: 42
                height: 42
                source: "loading.png"

                RotationAnimator{
                    target: image1
                    from: 0
                    to: 600
                    duration: 2200
                    running: load

                    onStopped:
                    {
                        load = false
                        root.state = "State1"
                    }
                }
            }

            ErrorBox {
                id: errorBox1
                x: 146
                y: 4
                visible: false
            }

            ErrorBox {
                id: errorBox2
                x: 146
                y: 50
                visible: false

            }

            ErrorBox {
                id: errorBox3
                x: 134
                y: 156
            }
        }

        Button_Exit {
            id: button_Exit1
            x: 262
            y: 385
            width: 20
            height: 20
            opacity: 0
            visible: false
        }

        Rectangle {
            id: rectangle2
            x: 0
            y: 374
            z: -2
            width: 290
            height: 41
            color: "#ffffff"
            visible: false
            opacity: 0
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 416
        width: 290
        height: 96
        color: "#ffffff"
        z: -1

        Component.onCompleted:
        {
            root.state = "State5"
        }

        Image {
            id: image3
            x: 0
            y: 0
            width: 290
            height: 96
            z: 1
            source: "top.png"
        }
        Behavior on y
        {
            SmoothedAnimation { duration: 20000 }
        }

        onYChanged:
        {
            if(rectangle1.y == 0)
            {
                item1.visible = true
            }
        }
    }

    Button {
        id: button2
        x: 58
        y: 382
        opacity: 0
    }


    Button {
        id: button3
        x: 122
        y: 382
        opacity: 0
    }
    

    Button {
        id: button4
        x: 186
        y: 382
        opacity: 0
    }


    Text {
        id: text1
        x: 129
        y: 181
        text: qsTr("Text")
        font.pixelSize: 12
        opacity: 0
    }



    Image {
        id: image4
        x: 97
        y: 182
        width: 100
        height: 100
        opacity: 0
    }

    Image {
        id: menu
        x: 260
        y: 0
        width: 30
        height: 30
        visible: false
        source: "menu-alt-512.png"
    }

    MouseArea {
        id: mouseArea1
        x: 260
        y: 0
        width: 30
        height: 30

        onPressed: {
            rectangle5.visible = true
        }

        onReleased: {
            rectangle5.visible = false
            if(text1.text == "Click a Tab"){
                root.state = "State1_1"
            }
            if(text1.text == "Recent Messages"){
                root.state = "State2_1"
            }
            if(text1.text == "Recent Files"){
                root.state = "State3_1"
            }
            if(text1.text == "Recent Shares"){
                root.state = "State4_1"
            }
        }

        Rectangle {
            id: rectangle5
            x: 0
            y: 0
            width: 30
            height: 30
            color: "#d4d4d4"
            z: 2
            opacity: 0.2
            visible: false
            border.width: 0
        }
    }

    Menubar {
        id: menubar1
        x: 234
        y: -202
        visible: false
    }

    Image {
        id: image2
        x: 0
        y: 0
        width: 290
        height: 30
        visible: false
        source: "home_top.png"
    }

    Button_back {
        id: button_back1
        x: 34
        y: 346
        opacity: 0
    }

    Button_info {
        id: button_info1
        x: 8
        y: 384
        visible: true
    }

    Button_back {
        id: button_back2
        x: 130
        y: 379
        visible: false
        opacity: 0
    }

    Slide {
        id: slide1
        x: -169
        y: 37
        visible: false
        opacity: 0
    }


    states: [
        State {
            name: "State1"
            
            PropertyChanges {
                target: scrnmsearea
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
            }
            
            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }
            
            PropertyChanges {
                target: textboxUname1
                visible: false
            }
            
            PropertyChanges {
                target: textboxPwd1
                visible: false
            }
            
            PropertyChanges {
                target: button1
                visible: false
            }
            
            PropertyChanges {
                target: image1
                visible: false
            }
            
            PropertyChanges {
                target: image3
                x: 0
                y: 0
                z: 2
                visible: true
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                btnname: "Messages"
                opacity: 1
            }
            
            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                btnname: "Files"
                opacity: 1
            }
            
            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                btnname: "Shares"
                opacity: 1
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 86
                y: 131
                width: 123
                height: 30
                text: qsTr("Click a Tab")
                font.pixelSize: 18
                font.bold: true
                font.family: "Courier"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                z: -2
                visible: false
            }

            PropertyChanges {
                target: image2
                z: 2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 3
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                radius: 1
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                x: 260
                y: 0
                z: 4
            }

            PropertyChanges {
                target: rectangle2
                x: 0
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -1
                opacity: 1
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: scrnmsearea
                visible: true
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 65
                y: 131
                width: 165
                height: 30
                text: qsTr("Recent Messages")
                visible: true
                font.pixelSize: 18
                opacity: 1
                font.family: "Courier"
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "envelope.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                z: 2
            }

            PropertyChanges {
                target: button_back2
                y: 379
                z: -2
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -3
                opacity: 1
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                visible: true
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                clip: false
                z: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 79
                y: 130
                width: 132
                height: 30
                text: qsTr("Recent Files")
                font.pixelSize: 18
                opacity: 1
                font.family: "Courier"
                visible: true
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "files.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                z: 2
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State4"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                visible: true
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 65
                y: 131
                width: 165
                height: 30
                text: qsTr("Recent Shares")
                font.pixelSize: 18
                opacity: 1
                font.family: "Courier"
                visible: true
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "share.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                z: 2
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State5"

            PropertyChanges {
                target: rectangle1
                x: 0
                y: 0
                width: 290
                height: 96
                z: 3
            }

            PropertyChanges {
                target: menubar1
                visible: false
            }

            PropertyChanges {
                target: menu
                z: 2
            }

            PropertyChanges {
                target: image3
                x: 0
                y: 0
                width: 290
                height: 96
                z: 5
                visible: true
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: button_Exit1
                opacity: 1
                z: 1
                visible: true
            }

            PropertyChanges {
                target: scrnmsearea
            }

            PropertyChanges {
                target: button1
                x: 49
                y: 125
                visible: true
            }

            PropertyChanges {
                target: item1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                x: 49
                y: 57
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: true
            }

            PropertyChanges {
                target: errorBox1
                x: 147
                y: 3
                radius: 8
                visible: false
            }

            PropertyChanges {
                target: errorBox2
                x: 146
                y: 44
                radius: 8
                visible: false
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: false
                z: -1
                opacity: 1
            }
        },
        State {
            name: "State1_1"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                x: 0
                y: 0
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 86
                y: 131
                width: 123
                height: 30
                text: qsTr("Click a Tab")
                font.pixelSize: 18
                opacity: 1
                font.family: "Courier"
                font.bold: true
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                y: 30
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State2_1"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                visible: true
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 65
                y: 131
                width: 165
                height: 30
                text: qsTr("Recent Messages")
                font.family: "Courier"
                opacity: 1
                font.pixelSize: 18
                visible: true
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "envelope.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                y: 30
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State3_1"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                visible: true
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 79
                y: 130
                width: 132
                height: 30
                text: qsTr("Recent Files")
                font.family: "Courier"
                opacity: 1
                visible: true
                font.pixelSize: 18
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "files.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                y: 30
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State4_1"
            PropertyChanges {
                target: scrnmsearea
                anchors.topMargin: 0
                anchors.leftMargin: 0
                visible: true
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#2b2b2b"
                radius: 5
                border.color: "#4d564f"
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 65
                y: 131
                width: 165
                height: 30
                text: qsTr("Recent Shares")
                font.family: "Courier"
                opacity: 1
                visible: true
                font.pixelSize: 18
                font.bold: true
            }

            PropertyChanges {
                target: image4
                source: "share.png"
                opacity: 1
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
            }

            PropertyChanges {
                target: menu
                z: 1
                visible: true
            }

            PropertyChanges {
                target: menubar1
                x: 240
                y: 30
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State6"
            PropertyChanges {
                target: scrnmsearea
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: false
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                x: 0
                y: 0
                visible: false
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                radius: 5
                visible: false
                opacity: 1
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                radius: 5
                visible: false
                opacity: 1
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                radius: 5
                visible: false
                opacity: 1
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 70
                y: 131
                width: 154
                height: 45
                text: qsTr("BeeDooBiz v1.0")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                font.family: "Courier"
                opacity: 1
                font.pixelSize: 18
                font.bold: true
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
            }

            PropertyChanges {
                target: image2
                visible: true
                z: 2
            }

            PropertyChanges {
                target: menu
                visible: false
                z: 3
            }

            PropertyChanges {
                target: menubar1
                x: 240
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                x: 260
                y: 0
                visible: false
                z: 4
            }

            PropertyChanges {
                target: button_back1
                x: 8
                y: 380
                opacity: 1
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -2
                opacity: 1
            }
        },
        State {
            name: "State7"
            PropertyChanges {
                target: scrnmsearea
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                x: 0
                y: 0
                visible: true
                z: 2
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                visible: false
                opacity: 1
                border.color: "#4d564f"
                btnname: "Messages"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                visible: false
                opacity: 1
                border.color: "#4d564f"
                btnname: "Files"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                visible: false
                opacity: 1
                border.color: "#4d564f"
                btnname: "Shares"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 86
                y: 131
                width: 123
                height: 30
                text: qsTr("Settings")
                horizontalAlignment: Text.AlignHCenter
                visible: true
                opacity: 1
                font.bold: true
                font.pixelSize: 18
                font.family: "Courier"
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
                z: "-2"
            }

            PropertyChanges {
                target: image2
                visible: true
                z: 2
            }

            PropertyChanges {
                target: menu
                visible: false
                z: 3
            }

            PropertyChanges {
                target: menubar1
                x: 240
                radius: 1
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                x: 260
                y: 0
                visible: false
                z: 4
            }

            PropertyChanges {
                target: rectangle5
                visible: false
            }

            PropertyChanges {
                target: button_back2
                visible: true
                opacity: 1
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                visible: true
                z: -3
                opacity: 1
            }

            PropertyChanges {
                target: slide1
                x: -152
                y: 30
                visible: true
                opacity: 1
            }
        },
        State {
            name: "State8"
            PropertyChanges {
                target: scrnmsearea
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }

            PropertyChanges {
                target: button_info1
                x: 8
                y: 384
                visible: true
            }

            PropertyChanges {
                target: textboxUname1
                visible: false
            }

            PropertyChanges {
                target: textboxPwd1
                visible: false
            }

            PropertyChanges {
                target: button1
                visible: false
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: image3
                x: 0
                y: 0
                visible: true
                z: 2
            }

            PropertyChanges {
                target: button2
                x: 34
                y: 382
                width: 74
                height: 25
                color: "#4d564f"
                radius: 5
                opacity: 1
                visible: false
                btnname: "Messages"
                border.color: "#4d564f"
            }

            PropertyChanges {
                target: button3
                x: 109
                y: 382
                width: 76
                height: 25
                color: "#4d564f"
                radius: 5
                opacity: 1
                visible: false
                btnname: "Files"
                border.color: "#4d564f"
            }

            PropertyChanges {
                target: button4
                x: 186
                y: 382
                width: 71
                height: 25
                color: "#4d564f"
                radius: 5
                opacity: 1
                visible: false
                btnname: "Shares"
                border.color: "#4d564f"
            }

            PropertyChanges {
                target: button_Exit1
                x: 262
                y: 385
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: text1
                x: 86
                y: 131
                width: 123
                height: 30
                text: qsTr("Settings")
                opacity: 1
                font.bold: true
                visible: true
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
                font.family: "Courier"
            }

            PropertyChanges {
                target: rectangle1
                y: 416
                visible: false
                z: "-2"
            }

            PropertyChanges {
                target: image2
                x: 0
                y: 0
                visible: true
                z: 6
            }

            PropertyChanges {
                target: menu
                visible: false
                z: 3
            }

            PropertyChanges {
                target: menubar1
                x: 240
                radius: 1
                visible: true
            }

            PropertyChanges {
                target: mouseArea1
                x: 260
                y: 0
                visible: false
                z: 4
            }

            PropertyChanges {
                target: rectangle5
                visible: false
            }

            PropertyChanges {
                target: button_back2
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: rectangle2
                y: 374
                width: 290
                height: 44
                color: "#000000"
                opacity: 1
                visible: true
                z: "-3"
            }

            PropertyChanges {
                target: slide1
                x: 0
                y: 30
                opacity: 1
                z: 5
                visible: true
            }
        }
    ]
}

