import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
         alignment: Alignment.topCenter,
         child: Text(
           "我是个人页面",
           style: TextStyle(
             fontSize: 40,
             color: Colors.brown
           ),
         ),
       ),
    );
  }
}