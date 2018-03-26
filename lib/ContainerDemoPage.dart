import 'package:flutter/material.dart';

class ContainerDemoPage extends StatelessWidget {
  static final String route = "/container-demo";
  static final String title = "Container Demo";

  Widget build (BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Container Demo'),
      ),
      body: new Center(
        child: new Container(
          width: 200.0,
          height: 200.0,
          child: new Center(
            child: new Text(
              'Hello world',
              style: new TextStyle(
                color: const Color(0xff000000),
                fontSize: 20.0,
                decoration: TextDecoration.none
              )
            )
          ),
          decoration: new BoxDecoration(
            color: Colors.lightBlueAccent[100],
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0)
            ),
            border: new Border.all(
              color: const Color(0xfff3a451),
              width: 8.0
            )
          ),
        ),
      )
    );
  }
}
