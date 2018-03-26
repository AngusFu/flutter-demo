import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';import 'package:flutter/material.dart';

import 'AppState.dart';

import 'ShoppingListPage.dart';
import 'CounterPage.dart';
import 'ListPage.dart';
import 'GesturePage.dart';
import 'ContainerDemoPage.dart';
import 'TextDemoPage.dart';
import 'ImageDemoPage.dart';
import 'ExpandedDemoPage.dart';
import 'ExpandedVerticalDemoPage.dart';
import 'StackDemoPage.dart';
import 'ListViewDemoPage.dart';
import 'AlignDemoPage.dart';
import 'SizedBoxDemoPage.dart';
import 'LinearGradientDemoPage.dart';
import 'OpacityDemoPage.dart';

void main() {
  runApp(new WemlionDemoApp());
}

AppState appReducer(AppState state, action) {
  switch (action['type']) {
    case 'Actions.Increment':
      state.count += 1;
      break;
    case 'Actions.RemoveFromCart':
      state.shoppingCart.remove(action['payload']);
      break;
    case 'Actions.AddToCart':
      state.shoppingCart.add(action['payload']);
      break;
  }
  return state;
}

List<Map<String, String>> routes = [
  {
    "label": ListPage.title,
    "route": ListPage.route
  },
  {
    "label": CounterPage.title,
    "route": CounterPage.route
  },
  {
    "label": GesturePage.title,
    "route": GesturePage.route
  },
  {
    "label": ShoppingListPage.title,
    "route": ShoppingListPage.route
  },
  {
    "label": ContainerDemoPage.title,
    "route": ContainerDemoPage.route
  },
  {
    "label": TextDemoPage.title,
    "route": TextDemoPage.route
  },
  {
    "label": ImageDemoPage.title,
    "route": ImageDemoPage.route
  },
  {
    "label": ExpandedDemoPage.title,
    "route": ExpandedDemoPage.route
  },
  {
    "label": ExpandedVerticalDemoPage.title,
    "route": ExpandedVerticalDemoPage.route
  },
  {
    "label": StackDemoPage.title,
    "route": StackDemoPage.route
  },
  {
    "label": ListViewDemoPage.title,
    "route": ListViewDemoPage.route
  },
  {
    "label": AlignDemoPage.title,
    "route": AlignDemoPage.route
  },
  {
    "label": SizedBoxDemoPage.title,
    "route": SizedBoxDemoPage.route
  },
  {
    "label": LinearGradientDemoPage.title,
    "route": LinearGradientDemoPage.route
  },
  {
    "label": OpacityDemoPage.title,
    "route": OpacityDemoPage.route
  }
];

class WemlionDemoApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState()
  );

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routeList =  {
      ListPage.route: (BuildContext context) => new ListPage(),
      CounterPage.route: (BuildContext context) => new CounterPage(),
      GesturePage.route: (BuildContext context) => new GesturePage(),
      ShoppingListPage.route: (BuildContext context) => new ShoppingListPage(),
      ContainerDemoPage.route: (BuildContext context) => new ContainerDemoPage(),
      TextDemoPage.route: (BuildContext context) => new TextDemoPage(),
      ImageDemoPage.route: (BuildContext context) => new ImageDemoPage(),
      ExpandedDemoPage.route: (BuildContext context) => new ExpandedDemoPage(),
      ExpandedVerticalDemoPage.route: (BuildContext context) => new ExpandedVerticalDemoPage(),
      StackDemoPage.route: (BuildContext context) => new StackDemoPage(),
      ListViewDemoPage.route: (BuildContext context) => new ListViewDemoPage(),
      AlignDemoPage.route: (BuildContext context) => new AlignDemoPage(),
      SizedBoxDemoPage.route: (BuildContext context) => new SizedBoxDemoPage(),
      LinearGradientDemoPage.route: (BuildContext context) => new LinearGradientDemoPage(),
      OpacityDemoPage.route: (BuildContext context) => new OpacityDemoPage(),
    };

    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: 'My Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue
        ),
        home: new IndexPage(routes: routes),
        routes: routeList,
      )
    );
  }
}

class IndexPage extends StatefulWidget {
  final String name = "index";

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
        actions: <Widget>[
          new PopupMenuButton(
            onSelected: (String value) {
              print(value);
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                value: '选项一的值',
                child: new Text('选项一')
              ),
              new PopupMenuItem<String>(
                value: '选项二的值',
                child: new Text('选项二')
              )
            ]
          )
        ],
      ),
      body: new CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(0.0),
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
