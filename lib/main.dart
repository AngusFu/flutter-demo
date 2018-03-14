import 'package:flutter/material.dart';
import './ShoppingListItem.dart';
import './ShoppingListPage.dart';
import './CounterPage.dart';
import './ListPage.dart';
import './GesturePage.dart';

final List<Product> kProducts = <Product>[
  new Product(name: '鸡蛋'),
  new Product(name: '面粉'),
  new Product(name: '巧克力脆片'),
];

final List<Map<String, String>> routes = [
  {
    "label": "List Demo",
    "route": "/list",
  },
  {
    "label": "List Demo",
    "route": "/list",
  },
  {
    "label": "Counter Demo",
    "route": "/counter",
  },
  {
    "label": "Gesture Demo",
    "route": "/gesture",
  },
  {
    "label": "Shopping List Demo",
    "route": "/shopping-list",
  },
];

void main() {
  runApp(new WemlionDemoApp());
}

class WemlionDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '奇舞擂台',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new IndexPage(routes: routes),
      routes: <String, WidgetBuilder> {
        '/list': (BuildContext context) => new ListPage(),
        '/counter': (BuildContext context) => new CounterPage(),
        '/gesture': (BuildContext context) => new GesturePage(),
        '/shopping-list': (BuildContext context) => new ShoppingListPage(products: kProducts),
      },
    );
  }
}

class IndexPage extends StatefulWidget {
  IndexPage({
    Key key,
    this.routes
  }) : super(key: key);

  final List<Map<String, String>> routes;

  @override
  IndexPageState createState() {
    return new IndexPageState();
  }
}

class IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext build) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                widget.routes.map((route) {
                  return new ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(route["route"]);
                    },
                    leading: new CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: new Text(route["label"][0])
                    ),
                    title: new Text(
                      route["label"],
                      style: new TextStyle(
                        color: Colors.black54
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList()
              ),
            ),
          ),
        ],
      )
    );
  }
}
