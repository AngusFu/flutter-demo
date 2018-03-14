import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({
    Key key
  }) : super(key: key);

  @override
  CounterPageState createState() {
    return new CounterPageState();
  }
}

class CounterPageState extends State<CounterPage> {
  int count = 0;

  void onPressed () {
    setState(() {
      count += 1;
    });
  }

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
        title: new Text("My Counter Demo"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: "搜索",
            onPressed: null,
          )
        ],
      ),
      body: new Center(
        child: new CounterDisplay(count: count,),
      ),
      floatingActionButton: new CounterIncrementor(onPressed: onPressed),
    );
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({
    this.onPressed
  });

  final VoidCallback onPressed;

  @override
  Widget build (BuildContext context) {
    return new FloatingActionButton(
      onPressed: onPressed,
      tooltip: "增加",
      child: new Icon(Icons.add),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({
    this.count
  });

  final int count;

  @override
  Widget build (BuildContext context) {
    return new Center(
      child: new Text(
        "点击了 $count 次数",
        style: new TextStyle(
          fontSize: 24.0
        ),
      ),
    );
  }
}
