#ifndef STORAGESTATE_H
#define STORAGESTATE_H
#include <QObject>
#include <QProcess>
class StorageState: public QObject {
    Q_OBJECT
    Q_ENUMS(StorageKind)

public:
    StorageState(QObject *parent = 0);
    ~StorageState();

    enum StorageKind{
        Empty,
        Used,
        All
    };

    Q_INVOKABLE static void updateState();
    Q_INVOKABLE static int getIntSize(StorageKind);
    Q_INVOKABLE static QString getStrSize(StorageKind);
    static void init();
private:
    static int* intSize;
    static QString* strSize;
    static QProcess* dfProcess;
    static void stdoutProcess();
    static int sizeTrans(QString);
signals:
    void ready2read();
};



#endif // STORAGESTATE_H
