# project_qtpart
For the big project.

## something useful
### basic
* Qt Quick:允许在 Qt/C++ 程序中嵌入 Qt Quick（一种基于 Qt 的高度动画的用户界面，适合于移动平台开发）。这些类可以通过 <QtQuick> 引入，而且需要在 pro 文件中添加 QT += quick。
* Qt Multimedia:提供视频、音频、收音机以及摄像头等功能。这些类可以通过 <QtMultimedia> 引入，而且需要在 pro 文件中添加 QT += multimedia。
* Qt SQL:允许使用 SQL 访问数据库。这些类可以通过 <QtSql> 引入，而且需要在 pro 文件中添加 QT += sql。
### addition
* Qt Concurrent:封装了底层线程技术的类库，方便开发多线程程序。
## 目前需要考虑的问题
* 进程间通信
* 用线程访问互联网
* 下一步需要构建一个hoster，用于新建Activity和销毁Activity，避免调用页面自身的finish函数。hoster还需要具有接收intent的能力，即实现在不同activity间的信息传递，使用activity标识码作为key，Qt的二进制数据结构作为value。
### ref
* Qt basic:https://www.devbean.net/2012/08/qt-study-road-2-catelog/
* Qt 输入法:http://blog.csdn.net/cqltbe131421/article/details/69951924
### todolist
#### 系统级别
- [ ] 和其他进程的通信
- [ ] 新开线程实现和讯飞或百度的语音识别API交互
- [ ] 新开线程进行数据库查询
#### Activity的管理hoster
- [ ] Hoster:给出唯一标识码新建Activity的能力
- [ ] Hoster:暂存不同数据类型Intent的能力
- [ ] 在item中添加静态Hoster::Kind关键字是否能完成不同页面的识别
- [x] 多开窗口只需新建engine即可
#### Activity
- [ ] Wifi链接界面
- [ ] setting界面
- [ ] 存储管理界面
- [ ] 时间设置界面(是否可考虑使用网络时钟)
- [x] 主搜索界面
- [ ] 软键盘拼音输入法
- [ ] 搜索时段选择界面
- [ ] 时段搜索结果界面(ListView)
- [ ] 关键字搜索结果界面(ListView)
- [ ] 结果详情界面
- [ ] 视频播放界面
- [ ] 关机界面和功能
