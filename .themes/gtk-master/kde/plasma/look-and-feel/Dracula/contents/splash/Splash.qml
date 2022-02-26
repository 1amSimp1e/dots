import QtQuick 2.5

Image {
    id: root
    source: "images/background.png"

    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }

    Item {
        id: content
        anchors.fill: parent
        opacity: 0
        TextMetrics {
            id: units
            text: "M"
            property int gridUnit: boundingRect.height
            property int largeSpacing: units.gridUnit
            property int smallSpacing: Math.max(2, gridUnit/4)
        }
       
        Image {
            id: logo
            property real size: units.gridUnit * 12
            anchors.centerIn: parent
            source: "images/logo.png"
            sourceSize.width: 150
            sourceSize.height: 150

            ParallelAnimation {
                running: true

                ScaleAnimator {
                    target: logo
                    from: 0
                    to: 1
                    duration: 700
                }
                SequentialAnimation {
                    loops: Animation.Infinite

                    ScaleAnimator {
                        target: logo
                        from: 0.97
                        to: 1
                        duration: 1000
                    }
                    ScaleAnimator {
                        target: logo
                        from: 1
                        to: 0.97
                        duration: 1000
                    }
                }
            }
        }

        Image {
            id: busyIndicator
            //in the middle of the remaining space
            y: parent.height / 2 - height/2
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/busy02.svg"
            sourceSize.height: logo.height + 60
            sourceSize.width: logo.width + 60
            RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 1200
                loops: Animation.Infinite
            }
        }

        Image {
            id: busyIndicator2
            //in the middle of the remaining space
            y: parent.height / 2 - height /2
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/busy02.svg"
            sourceSize.height: logo.height + 100
            sourceSize.width: logo.width + 100
            RotationAnimator on rotation {
                id: rotationAnimator2
                from: 360
                to: 0 
                duration: 1200
                loops: Animation.Infinite
            }
        }


    }

    OpacityAnimator {
        id: introAnimation
        running: false
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}
