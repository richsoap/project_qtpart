#ifndef ACTIVITYHOSTER
#define ACTIVITYHOSTER
#include <QObject>
#include <vector>
#include <stack>
#include <QQmlApplicationEngine>
class DataSwapper: public QObject {
    Q_OBJECT

public:
    DataSwapper(QObject *parent = 0);
    ~DataSwapper();

    //Q_INVOKABLE static int getStartIntent(ActivityKind target);
    //Q_INVOKABLE static int getReturnIntent(ActivityKind target);



private:
    static std::vector<int> startIntents;
    static std::vector<int> returnIntents;

};



#endif // ACTIVITYHOSTER

