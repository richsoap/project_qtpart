#ifndef ACTIVITYHOSTER
#define ACTIVITYHOSTER
#include <QObject>
#include <QDate>
#include <vector>
#include <stack>
#include <QQmlApplicationEngine>
class DataSwapper: public QObject {
    Q_OBJECT

public:
    DataSwapper(QObject *parent = 0);
    ~DataSwapper();

    Q_INVOKABLE static void setFromDate(QDate date);
    Q_INVOKABLE static void setToDate(QDate date);
    Q_INVOKABLE static QString getFromDate();
    Q_INVOKABLE static QString getToDate();
    Q_INVOKABLE static void setKeyWords(QString words);
    Q_INVOKABLE static QString getKeyWords();
    Q_INVOKABLE static QString getDateTitle();


    static QDate fromDate,toDate;
    static QString keyWords;

};



#endif // ACTIVITYHOSTER

