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

    Q_INVOKABLE static void updateState();
    Q_INVOKABLE static int getIntSize(StorageKind);
    Q_INVOKABLE static QString getStrSize(StorageKind);
    Q_INVOKABLE static bool isAvaliable();
    static void init();

    enum StorageKind{
        Empty,
        Used,
        All
    };
private:
    static int intSize[3];
    static QString strSize[3];
    static QProcess dfProcess;
};



#endif // STORAGESTATE_H
