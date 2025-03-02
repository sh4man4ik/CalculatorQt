import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 6.7

Window {
    visible: true
    color: "#7370ce"
    property alias button5LeftPadding: button5.leftPadding
    width: 310
    height: 500
    title: "Calculator"

    Button {
        objectName: "buttonPlus"
        id: buttonPlus
        x: 233
        y: 348
        width: 70
        height: 70
        text: "+"
        font.pixelSize: 100
        hoverEnabled: false
        topPadding: -16
        font.preferShaping: true
        font.kerning: true
        font.underline: false
        font.strikeout: false
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonPlus.text;
        }
    }

    Button {
        objectName: "buttonEquals"
        id: buttonEquals
        x: 157
        y: 424
        width: 146
        height: 70
        text: "="
        font.pixelSize: 100
        hoverEnabled: false
        topPadding: -16
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#53308c"
            radius: 2
        }

        onClicked: {
            calculator.calculate(textResult.text)
        }
    }

    Button {
        objectName: "buttonMinus"
        id: buttonMinus
        x: 233
        y: 272
        width: 70
        height: 70
        text: "-"
        font.pixelSize: 100
        hoverEnabled: false
        topPadding: -16
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonMinus.text;
        }
    }

    Button {
        objectName: "buttonMultiplication"
        id: buttonMultiplication
        x: 233
        y: 196
        width: 70
        height: 70
        text: "*"
        font.pixelSize: 100
        hoverEnabled: false
        bottomPadding: 8
        topPadding: 28
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonMultiplication.text;
        }
    }

    Button {
        objectName: "buttonDivision"
        id: buttonDivision
        x: 233
        y: 120
        width: 70
        height: 70
        text: "/"
        font.pixelSize: 42
        hoverEnabled: false
        clip: false
        transformOrigin: Item.Center
        display: AbstractButton.TextBesideIcon
        flat: false
        highlighted: false
        wheelEnabled: false
        checked: false
        leftPadding: 13
        topPadding: -5
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonDivision.text;
        }
    }

    Button {
        objectName: "buttonPercent"
        id: buttonPercent
        x: 157
        y: 120
        width: 70
        height: 70
        text: "%"
        font.pixelSize: 42
        hoverEnabled: false
        topPadding: -1
        leftPadding: 10
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonPercent.text;
        }
    }

    Button {
        objectName: "buttonDot"
        id: buttonDot
        x: 81
        y: 424
        width: 70
        height: 70
        text: "."
        font.pixelSize: 100
        hoverEnabled: false
        topPadding: -31
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += buttonDot.text;
        }
    }

    Button {
        objectName: "button7"
        id: button7
        x: 5
        y: 196
        width: 70
        height: 70
        text: "7"
        font.pixelSize: 58
        hoverEnabled: false
        leftPadding: 9
        topPadding: -1
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button7.text;
        }
    }

    function buttonCEClicked()
    {
        let str = textResult.text
        str = str.substring(0, str.length - 1);
        textResult.text = str
    }
    Button {
        objectName: "buttonCE"
        id: buttonCE
        x: 81
        y: 120
        width: 70
        height: 70
        text: "CE"
        font.pixelSize: 48
        hoverEnabled: false
        topPadding: -2
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#53308c"
            radius: 2
        }

        onClicked: {
            buttonCEClicked();
        }
    }

    Button {
        objectName: "buttonC"
        id: buttonC
        x: 5
        y: 120
        width: 70
        height: 70
        text: "C"
        font.pixelSize: 48
        hoverEnabled: false
        leftPadding: 7
        topPadding: -3
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#53308c"
            radius: 2
        }

        onClicked: {
            textResult.text = ""
        }
    }

    Button {
        objectName: "button8"
        id: button8
        x: 81
        y: 196
        width: 70
        height: 70
        text: "8"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button8.text;
        }
    }

    Button {
        objectName: "button9"
        id: button9
        x: 157
        y: 196
        width: 70
        height: 70
        text: "9"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button9.text;
        }
    }

    Button {
        objectName: "button4"
        id: button4
        x: 5
        y: 272
        width: 70
        height: 70
        text: "4"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button4.text;
        }
    }

    Button {
        objectName: "button5"
        id: button5
        x: 81
        y: 272
        width: 70
        height: 70
        text: "5"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button5.text;
        }
    }

    Button {
        objectName: "button6"
        id: button6
        x: 157
        y: 272
        width: 70
        height: 70
        text: "6"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button6.text;
        }
    }

    Button {
        objectName: "button3"
        id: button3
        x: 157
        y: 348
        width: 70
        height: 70
        text: "3"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button3.text;
        }
    }

    Button {
        objectName: "button2"
        id: button2
        x: 81
        y: 348
        width: 70
        height: 70
        text: "2"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button2.text;
        }
    }

    Button {
        objectName: "button1"
        id: button1
        x: 5
        y: 348
        width: 70
        height: 70
        text: "1"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button1.text;
        }
    }

    Button {
        objectName: "button0"
        id: button0
        x: 5
        y: 424
        width: 70
        height: 70
        text: "0"
        font.pixelSize: 58
        hoverEnabled: false
        topPadding: -1
        leftPadding: 9
        font.underline: false
        font.strikeout: false
        font.preferShaping: true
        font.kerning: true
        palette.buttonText: "#a3a3c9"

        background: Rectangle {
            color: "#4c3e9c"
            radius: 2
        }

        onClicked: {
            textResult.text += button0.text;
        }
    }

    Text {
        objectName: "textResult"
        id: textResult
        x: 6
        y: 19
        color: "#a3a3c9"
        text: qsTr("")
        font.pixelSize: 60
        font.bold: true
    }
    
}
