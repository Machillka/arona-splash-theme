import QtQuick 2.15

Image {
    id: backgroundImg
    source: "images/frame" + currentFrame + ".png"
    cache: true
    asynchronous: true
    property int frameCount: 10
    property int currentFrame: 1
    property int frameDelay: 50 

    Timer {
        id: animTimer
        interval: frameDelay
        running: true
        repeat: true
        onTriggered: {
            currentFrame = (currentFrame % frameCount) + 1
        }
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