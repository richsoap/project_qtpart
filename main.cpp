#include "mainwindow.h"
#include <QApplication>
#include <QLabel>
#include <QMouseEvent>
#include <QProcess>
#include <QDebug>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QString program = "ls";
    QStringList arguments;
    arguments<<"/home";
    QProcess *shellProcess = new QProcess;
    shellProcess->start(program,arguments);
    shellProcess->waitForFinished();
    QByteArray output = shellProcess->readAllStandardOutput();
    QString result = output;
    qDebug()<<result;
    return a.exec();
}
