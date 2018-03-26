import 'package:flutter/material.dart';

class LinearGradientDemoPage extends StatelessWidget {
  static final String route = "/linear-gradient";
  static final String title = "LinearGradient Demo";

  Widget build (BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Demo'),
      ),
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            colors: <Color>[const Color(0xffff2cc), const Color(0xffff6eb4)],
          ),
        ),
        child: new Container(
          width: 250.0,
          height: 250.0,
        ),
      )
    );
  }
}
