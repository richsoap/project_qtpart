#include <QObject>
#include "storagestate.h"
#include <QDebug>
#include <QProcess>

StorageState::StorageState(QObject *parent):QObject(parent) {}
StorageState::~StorageState() {}
void StorageState::init() {
    connect(dfProcess,&QProcess::readyReadStandardOutput,stdoutProcess);
}
void StorageState::updateState() {
    QString program = "/bin/bash";
    QStringList arguments;
    arguments <<"df -lh | grep sdb5";
    dfProcess->start(program,arguments);
}
int StorageState::getIntSize(StorageKind inputkind) {
    switch(inputkind){
        case Empty:return intSize[2];
        case Used: return intSize[1];
        case All: return intSize[0];
        default: return 0;
    }
}
QString StorageState::getStrSize(StorageKind inputkind) {
    switch(inputkind) {
        case Empty:return strSize[2];
        case Used:return strSize[1];
        case All:return strSize[0];
        default:return "test";
    }
}

void StorageState::stdoutProcess() {
    QString result = (QString)dfProcess->readAllStandardOutput();
    QStringList splitResult = result.split(' ',QString::SkipEmptyParts);
    strSize[0] = splitResult[1];
    strSize[1] = splitResult[2];
    strSize[2] = splitResult[3];
    intSize[0] = sizeTrans(strSize[0]);
    intSize[1] = sizeTrans(strSize[1]);
    intSize[2] = sizeTrans(strSize[2]);
}

int StorageState::sizeTrans(QString putin) {
    int times;
    switch(putin.at(putin.length() - 1).cell()) {
    case 'K':times = 1024;
        break;
    case 'M':times = 1024*1024;
        break;
    case 'G':times = 1024*1024*1024;
        break;
    default:
        times = 1;
    }
    putin.chop(1);
    double baseSize = putin.toDouble();
    return (int)baseSize*times;
}
