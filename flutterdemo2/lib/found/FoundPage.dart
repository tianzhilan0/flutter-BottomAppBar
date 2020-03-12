import 'package:flutter/material.dart';

class FoundPage extends StatefulWidget {
  FoundPage({Key key}) : super(key: key);

  @override
  _FoundPageState createState() => _FoundPageState();
}

class _FoundPageState extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text(
        "我是发现页",
        style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
        ),
        ),
    );
  }
}