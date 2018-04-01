#include <QObject>
#include "storagestate.h"
#include <QDebug>
#include <QProcess>

StorageState::StorageState(QObject *parent = 0) {}
StorageState::~StorageState() {}

void StorageState::init() {
    dfProcess = QProcess();
    intSize[3] = {0,0,0};
    strSize[3] = {"0K", "0K", "0K"};
}
void StorageState::updateState() {
    dfProcess.start("/bin/bash", "df -lh | grep sdb1");
}
int StorageState::getIntSize(StorageKind);
QString StorageState::getStrSize(StorageKind);
bool StorageState::isAvaliable();


