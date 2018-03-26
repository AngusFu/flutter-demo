import 'package:flutter/material.dart';

class TextDemoPage extends StatelessWidget {
  static final String route = "/text";
  static final String title = "Text Demo";

  Widget build(BuildContext build) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('文本控件'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            '红色 + 黑色删除线 + 25 号',
            style: new TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0
            ),
          ),
          new Text(
            '橙色 + 下划线 + 24 号',
            style: new TextStyle(
              color: Colors.orange,
              decoration: TextDecoration.underline,
              fontSize: 24.0
            ),
          ),
          new Text(
            '虚线上划线 + 23 号 + 倾斜',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic
            ),
          ),
          new Text(
            'serif 字体 + 24 号',
            style: new TextStyle(
              fontFamily: 'serif',
              fontSize: 24.0
            ),
          ),
          new Text(
            'monospace + 24 号 + 加粗',
            style: new TextStyle(
              fontFamily: 'monospace',
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
          ),
          new Text(
            '天蓝色 + 25 号 + 2 行跨度',
            style: new TextStyle(
              color: Colors.lightBlue,
              fontSize: 25.0,
              height: 2.0
            ),
          ),
          new Text(
            '24 号 + 2 个字母间隔',
            style: new TextStyle(
              fontSize: 24.0,
              letterSpacing: 2.0
            ),
          )
        ]
      )
    );
  }
}
