#include <QApplication>
#include <QQmlApplicationEngine>
#include "dataswapper.h"
#include <QtQml>
#include <vector>
std::vector<int> DataSwapper::startIntents = std::vector<int>(11);
std::vector<int> DataSwapper::returnIntents = std::vector<int>(11);

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<DataSwapper>("user.DataSwapper",1,0,"DataSwapper");

    QQmlApplicationEngine engine1;
    engine1.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

