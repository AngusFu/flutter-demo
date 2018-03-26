import 'package:flutter/material.dart';

class ExpandedDemoPage extends StatelessWidget {
  static final String route = "/expanded-demo";
  static final String title = "Expanded Demo";

  Widget build (BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Expanded Demo'),
      ),
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            child: new Text('Button1'),
            color: Colors.pink,
            onPressed: () {

            },
          ),
          new Expanded(
            flex: 1,
            child: new RaisedButton(
              child: new Text('Button Center'),
              color: Colors.orange,
              onPressed: () {},
            )
          ),
          new RaisedButton(
            child: new Text('Button2'),
            color: Colors.pink,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
