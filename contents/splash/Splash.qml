import QuickQt 2.15

Rectangle {
    id: root

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

    Image {
        id: backgroundImg
        anchors.fill: parent
        source: "images/frame" + currentFrame + ".png"
    }

    Text {
        id: welcomeText
        text: "Welcome, Sensei!"
        font.pixelSize: 32
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
    }
}