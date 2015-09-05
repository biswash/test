import QtQuick 2.0

Rectangle {
    width: 30
    height: 30
    color: "#00000000"
    Image {
        id: image1
        x: 0
        y: 0
        width: 30
        height: 30
        source: "Untitled-1.png"

        MouseArea {
            id: mouseArea1
            x: 0
            y: 0
            width: 30
            height: 30
            onClicked: {
                if(root.state == "State6"){
                    root.state = button_info1.previous_State
                }
                if(root.state == "State7"){
                    if(menubar1.previous_State == "State1_1")
                        menubar1.previous_State = "State1"
                    if(menubar1.previous_State == "State2_1")
                        menubar1.previous_State = "State2"
                    if(menubar1.previous_State == "State3_1")
                        menubar1.previous_State = "State3"
                    if(menubar1.previous_State == "State4_1")
                        menubar1.previous_State = "State4"
                    root.state = menubar1.previous_State
                }
            }
        }
    }
}
