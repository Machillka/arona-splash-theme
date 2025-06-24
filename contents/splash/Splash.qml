import QtQuick 2.15

Rectangle {
    id: root

    AnimatedImage {
        id: backgroundImage
        source: "images/arona.gif"
        anchors.fill: parent
        paused: false
        smooth: true
        visible: true
    }

    Text {
        id: welcomeText
        text: "Welcome, Sensei!"
        font.pixelSize: 40
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
    }
}