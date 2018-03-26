import 'package:flutter/material.dart';

class AlignDemoPage extends StatelessWidget {
  static final String route = "/align";
  static final String title = "Align Demo";

  AlignDemoPage({
    Key key,
  }) : super(key: key);

  Widget build (BuildContext ctx) {
    Image img = new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg');
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align Demo'),
      ),
      body: new Stack(
        children: <Widget>[
          // new Align(
          //   child: img,
          //   alignment: FractionalOffset.topLeft,
          // ),
          new Align(
            child: img,
            alignment: FractionalOffset.center,
          ),
          new Align(
            child: img,
            alignment: FractionalOffset.bottomRight,
          ),
          new Padding(
            child: new Align(
              child: img,
              alignment: new FractionalOffset(0.2, 0.0)
            ),
            padding: const EdgeInsets.all(18.0),
          )
        ],
      ),
    );
  }
}
