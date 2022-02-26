import QtQuick 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.4
import QtQuick.Controls.Styles 1.4

TextField {
    placeholderTextColor: config.color
    palette.text: config.color
    font.pointSize: config.fontSize
    font.family: config.font
    background: Rectangle {
        color: "#3B3D48"
        radius: parent.width / 2
        height: 30
        width: parent.width
        opacity: 0.7
        border.width: 1
        border.color: "#16171d"
        anchors.centerIn: parent
    }
}