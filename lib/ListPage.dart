import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({
    Key key
  }): super(key: key);

  @override
  ListPageState createState() {
    return new ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  Widget build(BuildContext build) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List page'),
      ),
      body: new CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  const Text('I\'m 222dedicating every day to you'),
                  const Text('Domestic life was never quite my style'),
                  const Text('When you smile, you knock me out, I fall apart'),
                  const Text('And I thought I was so smart'),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
