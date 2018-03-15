import 'package:flutter/material.dart';
import './ShoppingListPage.dart';
import './CounterPage.dart';
import './ListPage.dart';
import './GesturePage.dart';
import './AppState.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

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

void main() {
  runApp(new WemlionDemoApp());
}

class WemlionDemoApp extends StatelessWidget {
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState()
  );

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(
        title: 'My Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue
        ),
        home: new IndexPage(),
        routes: <String, WidgetBuilder> {
          '/list': (BuildContext context) => new ListPage(),
          '/counter': (BuildContext context) => new CounterPage(),
          '/gesture': (BuildContext context) => new GesturePage(),
          '/shopping-list': (BuildContext context) => new ShoppingListPage(),
        },
      )
    );
  }
}

class IndexPage extends StatefulWidget {
  IndexPage({
    Key key
  }) : super(key: key);

  @override
  IndexPageState createState() {
    return new IndexPageState();
  }
}

class IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext build) {
    StoreConnector body = new StoreConnector<AppState, List<Map<String, String>>>(
      converter: (store) => store.state.routes,
      builder: (context, routes) {
        return new CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: new SliverList(
                delegate: new SliverChildListDelegate(
                  routes.map((route) {
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
        );
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: body
    );
  }
}
