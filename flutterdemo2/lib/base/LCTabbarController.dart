
import 'package:flutter/material.dart';
import 'package:flutterdemo/add/AddPage.dart';
import 'package:flutterdemo/home/HomePage.dart';
import 'package:flutterdemo/found/FoundPage.dart';
import 'package:flutterdemo/message/MessagePage.dart';
import 'package:flutterdemo/mine/MinePage.dart';


class LCTabbarController extends StatefulWidget {
  LCTabbarController({Key key}) : super(key: key);

  @override
  _LCTabbarControllerState createState() => _LCTabbarControllerState();
}

class _LCTabbarControllerState extends State<LCTabbarController> {

  int currentIndex;
  final pages = [HomePage(), FoundPage(), MessagePage(), MinePage()];
  List titles = ["首页", "发现", "消息", "我的"];
  List normalImgUrls = [
    "http://img4.imgtn.bdimg.com/it/u=3432620279,1821211839&fm=26&gp=0.jpg",
    "http://img4.imgtn.bdimg.com/it/u=3432620279,1821211839&fm=26&gp=0.jpg",
    "http://img4.imgtn.bdimg.com/it/u=3432620279,1821211839&fm=26&gp=0.jpg",
    "http://img4.imgtn.bdimg.com/it/u=3432620279,1821211839&fm=26&gp=0.jpg"];
  List selectedImgUrls = [
    "http://img2.imgtn.bdimg.com/it/u=1414450711,2877842653&fm=26&gp=0.jpg",
    "http://img2.imgtn.bdimg.com/it/u=1414450711,2877842653&fm=26&gp=0.jpg",
    "http://img2.imgtn.bdimg.com/it/u=1414450711,2877842653&fm=26&gp=0.jpg",
    "http://img2.imgtn.bdimg.com/it/u=1414450711,2877842653&fm=26&gp=0.jpg",
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 5;
    
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航栏"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print("你点击了ADD");
            //调整进入Addpage()
          },
          elevation: 5,
          backgroundColor: Colors.yellow,
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            SizedBox(height: 49, width: itemWidth, child: tabbar(0)),
            SizedBox(height: 49, width: itemWidth, child: tabbar(1)),
            SizedBox(height: 49, width: itemWidth, ),
            SizedBox(height: 49, width: itemWidth, child: tabbar(2)),
            SizedBox(height: 49, width: itemWidth, child: tabbar(3)),

          ]
        ),
      ),
      body: pages[currentIndex],
    ); 
  }

  // 自定义tabbaritem
  Widget tabbar(int index) {
    //设置默认未选中的状态
    TextStyle style = TextStyle(fontSize: 12, color: Colors.black);
    String imgUrl = normalImgUrls[index];
    if (currentIndex == index) {
      //选中的话
      style = TextStyle(fontSize: 13, color: Colors.blue);
      imgUrl = selectedImgUrls[index];
    }
    //构造返回的Widget
    Widget item = Container(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(imgUrl, width: 25, height: 25),
            Text(
              titles[index],
              style: style,
            )
          ],
        ),
        onTap: () {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
      ),
    );
    return item;
  }
}