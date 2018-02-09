#include <QObject>
#include <vector>
#include <stack>
#include <QQmlApplicationEngine>
#include "dataswapper.h"
#include <QDebug>
DataSwapper::DataSwapper(QObject *parent):QObject(parent) {}
DataSwapper::~DataSwapper() {}

void DataSwapper::setFromDate(QDate date) {
    fromDate = date;
}
void DataSwapper::setToDate(QDate date) {
    if(fromDate > date) {
        toDate = fromDate;
    }
    else {
        toDate = date;
    }
}
QString DataSwapper::getFromDate() {
    return fromDate.toString("yy.mm.dd");
}
QString DataSwapper::getToDate() {
    return toDate.toString("yy.mm.dd");
}
void DataSwapper::setKeyWords(QString words) {
    keyWords = words;
}
QString DataSwapper::getKeyWords() {
    return keyWords;
}
QString DataSwapper::getDateTitle() {
    qDebug() << fromDate.toString("yy.MM.dd") + "---" + toDate.toString("yy.MM.dd");
    return fromDate.toString("yy.MM.dd") + "---" + toDate.toString("yy.MM.dd");
}

