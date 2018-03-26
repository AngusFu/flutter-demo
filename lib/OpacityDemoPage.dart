import 'package:flutter/material.dart';

class OpacityDemoPage extends StatelessWidget {
  static final String route = "/opacity";
  static final String title = "Opacity Demo";

  Widget build (BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Demo'),
      ),
      body: new Center(
        child: new Opacity(
          opacity: 0.6,
          child: new Container(
            alignment: Alignment.center,
            width: 250.0,
            height: 250.0,
            color: Colors.black,
            child: new Text(
              'opacity = 0.6',
              style: new TextStyle(
                color: Colors.white,
                fontSize: 28.0
              ),
            ),
          ),
        )
      )
    );
  }
}
