import 'package:flutter/material.dart';

class ImageDemoPage extends StatelessWidget {
  static final String route = "/image-demo";
  static final String title = "Image Demo";

  Widget build (BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Demo'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.network(
              'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
              scale: 3.0,
            ),
          ),
          new Center(
            // SEE https://flutter.io/assets-and-images/
            child: new DecoratedBox(
              position: DecorationPosition.background,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/avatar.jpg")
                ),
                color: Colors.lightBlue
              ),
              child: new Container(
                width: 200.0,
                height: 200.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
