import QtQuick 2.15

Rectangle {
    id: root

    property int height: Screen.height
    property int width: Screen.ScreenWidth
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
        id: typeText
        font.pointsize: parseInt(height / 80)
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        color: "white"
        text: fullText.substring(0, Math.floor(currentIndex))
    }

    NumberAnimation on currentIndex {
        id: typeAnimation
        from: 0
        to: fullText.length
        // 每个字符大约需要 150 毫秒（可根据需要调整）
        duration: fullText.length * 150
        running: true
    }
}