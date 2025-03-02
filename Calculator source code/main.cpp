#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <Calculator.h>

QQmlApplicationEngine *globalEngine;

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    globalEngine = &engine;

    Calculator calculator;
    engine.rootContext()->setContextProperty("calculator", &calculator);

    engine.load(QUrl(QStringLiteral("qrc:/qt/qml/calculatorqt/main.qml")));
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }

    return app.exec();
}
