import QtQuick 2.0
import QtQuick.Window   2.11
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

import QGroundControl                       1.0
import QGroundControl.AutoPilotPlugin       1.0
import QGroundControl.Palette               1.0
import QGroundControl.Controls              1.0
import QGroundControl.ScreenTools           1.0
import QGroundControl.MultiVehicleManager   1.0

Window {
    id:             loginWindow
    minimumWidth:   500
    minimumHeight:  500
    modality: Qt.ApplicationModal
    flags: Qt.SplashScreen
    visible: true
    function hideLogin() {
        visible = false
    }

    Item {

        Text {
            id: element
            x: 298
            y: 55
            text: qsTr("Login")
            font.pixelSize: 12
        }
    }

    TextEdit {
        id: textEdit
        x: 280
        y: 126
        width: 80
        height: 20
        text: qsTr("Username")
        font.pixelSize: 12
    }

    Button {
        id: button
        x: 280
        y: 162
        text: qsTr("LOGIN")
        onClicked: hideLogin()
    }
}
