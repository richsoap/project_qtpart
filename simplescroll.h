#ifndef SIMPLESCROLL
#define SIMPLESCROLL
class EventLabel:public QLabel {
public:
    EventLabel():isPress(false),isMove(false),beginx(0),beginy(0) { }

protected:
    bool isPress;
    bool isMove;
    int beginx,beginy;
    void mouseMoveEvent(QMouseEvent *event);
    void mousePressEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);
};

void EventLabel::mousePressEvent(QMouseEvent *event) {
    isPress=true;
    beginx = event->x();
    beginy = event->y();
}

void EventLabel::mouseMoveEvent(QMouseEvent *event) {
    int tempx,tempy;
    tempx = event->x();
    tempy = event->y();
    if(isPress) {
        if(abs(tempx - beginx) > 10 || abs(tempy - beginy) > 10)
            isMove=true;
    }
    if(isMove) {
        this->setText(QString("<center><h1>dx:%1,dy:%2</h1></center>")
                      .arg(QString::number(tempx-beginx),QString::number(tempy-beginy)));
    }
}

void EventLabel::mouseReleaseEvent(QMouseEvent *event) {
    if(isMove) {
        this->setText(QString("<center><h1>just move</h1></center>"));
    }
    else {
        this->setText(QString("<center><h1>open file</h1></center>"));
    }
    isMove = false;
    isPress = false;
}
#endif // SIMPLESCROLL

