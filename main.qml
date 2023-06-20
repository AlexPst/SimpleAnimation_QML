/* This file is generated and only relevant for integrating the project into a Qt 6 and cmake based
C++ project. */

import QtQuick 6.2
import QtQuick.Controls 6.2

Window {
    width: 1000
    height: 900

    visible: true
    title: "HomeWork_37_4_2"

    Rectangle {
        id: rectangleScreen
        width: 1000
        height: 900

        color: "#ffffff"
        scale: 1



        Text {
            id: label
            text: qsTr("This VIDEO")

            anchors.verticalCenter: rectangleScreen.verticalCenter
            font.family: Constants.font.family
            anchors.topMargin: 45
            anchors.horizontalCenter: parent.horizontalCenter


        }

        SequentialAnimation{
            id: animation

            ColorAnimation {
                id: colorAnimation1
                target: rectangleScreen
                property: "color"
                to: "#2294c6"
                from: Constants.backgroundColor
            }

            ColorAnimation {
                id: colorAnimation2
                target: rectangleScreen
                property: "color"
                to: Constants.backgroundColor
                from: "#2294c6"
            }

            ColorAnimation {
                id: colorAnimation3
                target: rectangleScreen
                property: "color"
                to: Constants.backgroundColor
                from: "black"
            }
        }

        Rectangle {
            id: rectangleButtonGroup
            x: 0
            y: 774
            width: rectangleScreen.width
            height: 126
            color: "#ffffff"



            Button
            {

                id: buttonPlay
                y: 18
                width: 100
                height: 100
                anchors.horizontalCenter: rectangleButtonGroup.horizontalCenter
                anchors.verticalCenter: rectangleButtonGroup.Center
                anchors.horizontalCenterOffset: 0
                text: qsTr("PLAY")

                Connections {
                    target: buttonPlay
                    onClicked: animation.start();

                }

                Connections
                {
                    target: buttonPlay
                    onClicked: label.text = "VIDEO PLAY";
                }

                Connections
                {
                    target: buttonPlay
                    onClicked: progressBarVideo.value +=1

                }

            }




            Button
            {
                id: buttonPause
                y: 28
                width: 90
                height: 80
                anchors.horizontalCenter: rectangleButtonGroup.horizontalCenter
                anchors.verticalCenter: rectangleButtonGroup.Center
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: 121
                text: "pause"
                Connections
                {
                    target: buttonPause
                    onClicked: label.text = "VIDEO PAUSED";
                }

            }
            Button
            {
                id: buttonStop
                y: 28
                width: 90
                height: 80
                anchors.horizontalCenter: rectangleButtonGroup.horizontalCenter
                anchors.verticalCenter: rectangleButtonGroup.Center
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: - 121
                text: "stop"
                Connections
                {
                    target: buttonStop
                    onClicked: label.text = "VIDEO STOPED";
                }

            }
            Button
            {
                id: buttonRewrite
                y: 28
                width: 90
                height: 80
                anchors.horizontalCenter: rectangleButtonGroup.horizontalCenter
                anchors.verticalCenter: rectangleButtonGroup.Center
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: - 230
                text: qsTr("◄◄")
                Connections
                {
                    target: buttonRewrite
                    onClicked: label.text = "VIDEO REWRITED";
                }

            }
            Button
            {
                id: buttonForward
                y: 28
                width: 90
                height: 80
                anchors.horizontalCenter: rectangleButtonGroup.horizontalCenter
                anchors.verticalCenter: rectangleButtonGroup.Center
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: 230
                text: qsTr("►►")
                Connections
                {
                    target: buttonForward
                    onClicked: label.text = "VIDEO FORWARD";

                }

            }

            ProgressBar {

                id: progressBarVideo
                from: 0
                value: 1
                to: 100
                width: rectangleButtonGroup.width;


            }




        }


    }

}
