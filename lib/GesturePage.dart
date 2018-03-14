import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  GesturePage({
    Key key
  }) : super(key: key);

  @override
  GesturePageState createState() {
    return new GesturePageState();
  }
}

class GesturePageState extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          tooltip: "返回",
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: new Text(
          "GestureDetector Demo",
          textAlign: TextAlign.left,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: "搜索",
            onPressed: null,
          )
        ],
      ),
      body: new GestureDetector(
        onTap: () {
          print("Clicked");
        },
        child: new Center(
          child: new Container(
            child: new Text(
              "Click me",
              style: new TextStyle(
                fontSize: 24.0
              ),
            ),
          ),
        ),
      )
      // floatingActionButton: new CounterIncrementor(onPressed: onPressed),
    );
  }
}
