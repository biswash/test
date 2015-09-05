import QtQuick 2.0

Rectangle {
    width: 20
    height: 20
    color: "#00000000"
    opacity: 1

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
            source: "exit2.png"
        }

        onClicked: {
            console.log("Exiting My App")
            Qt.quit()
        }
    }
}
