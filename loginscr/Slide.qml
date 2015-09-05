import QtQuick 2.0

Rectangle {
    id: sliderect
    width: 150
    height: 344
    color: "#666666"
    property string profName: text1.text

    Behavior on x {
        NumberAnimation { duration: 500 }
    }

    MouseArea {
        id: slide
        x: 142
        y: 146
        width: 50
        height: 50

        onClicked: {

            if(root.state == "State7"){
                root.state = "State8"
                slide_image.visible = false
                slideback_img.visible = true
            }

            else if(root.state == "State8"){
                root.state = "State7"
                slide_image.visible = true
                slideback_img.visible = false
            }
        }

        Image {
            id: slide_image
            x: 0
            y: 0
            width: 50
            height: 50
            source: "slideup1.png"
            visible: true
        }

        Image {
            id: slideback_img
            x: 0
            y: 0
            width: 50
            height: 50
            source: "slided1.png"
            visible: false
        }
    }

    Text {
        id: text1
        x: 8
        y: 82
        width: 134
        height: 27
        color: "#ffffff"
        text: profName
        z: 1
        font.bold: true
        font.family: "Courier"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 18

    }

    Rectangle {
        id: rectangle2
        x: 50
        y: 18
        width: 50
        height: 50
        radius: 18
        visible: true
        clip: true
        border.color: "#00000000"

        Image {
            id: image1
            anchors.fill: parent
            clip: true
            fillMode: Image.PreserveAspectCrop
            visible: true
            z: 2
            source: "Capture.png"
        }

    }

    Image {
        id: image2
        x: 0
        y: 0
        width: 150
        height: 132
        source: "prof.png"
    }
}
