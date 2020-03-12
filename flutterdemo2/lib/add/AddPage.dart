import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  Addpage({Key key}) : super(key: key);

  @override
  _AddpageState createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
       child: Text(
         "我是添加页面",
         style: TextStyle(
           fontSize: 40,
           color: Colors.green
         )
       ),
    );
  }
}