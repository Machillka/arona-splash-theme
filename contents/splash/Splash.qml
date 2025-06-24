import QtQuick 2.15
import QtQuick.Window 2.2
import QtGraphicalEffects 1.15

Rectangle {
    id: root

    height: Screen.height
    width: Screen.ScreenWidth
    property string fullText: "Welcome, Sensei"
    property real currentIndex: 0

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
        font.pointsize: 50
        font.bold: true
        font.family: "Noto Sans"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 60
        color: "white"
        text: fullText.substring(0, Math.floor(currentIndex))
    }

    NumberAnimation on currentIndex {
        id: typeAnimation
        from: 0
        to: fullText.length
        duration: fullText.length * 150
        running: true
    }
}