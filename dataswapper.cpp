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


void DataSwapper::searchData() {
    counter = 0;
}

int DataSwapper::getIndex() {
    if(counter < 18)
        return counter++;
    else
        return -1;
}

QString DataSwapper::getDate() {
    if(counter > 18) {
        return NULL;
    }
    else if(counter & 1) {
        return "2018.5.8";
    }
    else {
        return "2018.2.2";
    }
}
QString DataSwapper::getDetail() {
    if(counter > 18) {
        return NULL;
    }
    else if(counter & 1) {
        return "ffff222";
    }
    else {
        return "dddd555";
    }
}
QString DataSwapper::getSrc() {
    if(counter > 18) {
        return NULL;
    }
    else if(counter & 1) {
        return QString("file:///home/richsoap/Workspaces/project_qtpart/testimgs/1.png");
    }
    else {
        return QString("file:///home/richsoap/Workspaces/project_qtpart/testimgs/2.jpeg");
    }
}

