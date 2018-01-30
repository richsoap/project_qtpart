#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QQmlApplicationEngine engine1;
    engine1.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

