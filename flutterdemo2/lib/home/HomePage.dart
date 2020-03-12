import "package:flutter/material.dart";


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Text(
        "我是首页",
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
        ),
        ),
    );
  }
}