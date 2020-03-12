import 'package:flutter/material.dart';
import 'package:flutterdemo/base/LCTabbarController.dart';

class RootViewController extends StatefulWidget {
  RootViewController({Key key}) : super(key: key);

  @override
  _RootViewControllerState createState() => _RootViewControllerState();
}

class _RootViewControllerState extends State<RootViewController> {
  @override
  Widget build(BuildContext context) {
    return Container(child: LCTabbarController());
  }

  // get _appbar => AppBar(
  //       iconTheme: new IconThemeData(color: Colors.white),
  //       elevation: 2,
  //       backgroundColor: Colors.yellow,
  //       centerTitle: true,
  //       title: Text(
  //         '首页',
  //         style: TextStyle(color: Colors.white, fontSize: 24),
  //       ),
  //     );
}
