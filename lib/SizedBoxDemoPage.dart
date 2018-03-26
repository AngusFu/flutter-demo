import 'package:flutter/material.dart';

class SizedBoxDemoPage extends StatelessWidget {
  static final String route = "/sizedbox";
  static final String title = "SizedBox";

  SizedBoxDemoPage({
    Key key,
  }) : super(key: key);

  Widget build (BuildContext ctx) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align Demo'),
      ),
      body: new Column(
        children: <Widget>[
          new SizedBox(
            width: 300.0,
            height: 120.0,
            child: new Container(
              color: Colors.lightBlueAccent[100],
            ),
          ),
          new AspectRatio(
            aspectRatio: 1.0 / 0.618,
            child: new Container(
              color: Colors.deepOrangeAccent[100]
            ),
          ),
        ],
      )
    );
  }
}
