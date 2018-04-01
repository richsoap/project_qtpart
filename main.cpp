#include <QApplication>
#include <QQmlApplicationEngine>
#include "dataswapper.h"
#include "storagestate.h"
#include <QtQml>
#include <vector>
#include <QDate>

QDate DataSwapper::fromDate = QDate::currentDate();
QDate DataSwapper::toDate = fromDate;
QString DataSwapper::keyWords = "please putin";
int DataSwapper::counter = 0;

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    StorageState.init();
    qmlRegisterType<DataSwapper>("user.DataSwapper",1,0,"DataSwapper");

    QQmlApplicationEngine engine1;
    engine1.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

