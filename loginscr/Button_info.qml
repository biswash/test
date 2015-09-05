import QtQuick 2.0

Rectangle {
    id: infobtn
    width: 20
    height: 20
    color: "#00000000"
    opacity: 1
    property string previous_State: "State0"

    MouseArea {
        id: mouseArea1
        x: 0
        y: 0
        width: 20
        height: 20
        opacity: 1

        Image {
            id: image1
            x: 0
            y: 0
            width: 20
            height: 20
            source: "info.png"
        }

        onClicked: {
            previous_State = root.state
            root.state = "State6"
            console.log("This is a sample app")
        }
    }
}
