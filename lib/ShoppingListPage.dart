import 'package:flutter/material.dart';
import './ShoppingListItem.dart';

import 'package:flutter_redux/flutter_redux.dart';
import './AppState.dart';

class ShoppingListPage extends StatefulWidget {
  ShoppingListPage({
    Key key
  }) : super(key: key);

  @override
  ShoppingListPageState createState() {
    return new ShoppingListPageState();
  }
}

class ShoppingListPageState extends State<ShoppingListPage> {
  @override
  Widget build(BuildContext context) {
     StoreConnector body = new StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        CartChanedCallback handleCartChanged = (product, inCart) {
          String type = inCart ? 'Actions.AddToCart' : 'Actions.RemoveFromCart';
          store.dispatch({
            'type': type,
            'payload': product
          });
        };

        return new Column(
          children: store.state.productList.map((Product product) {
            return new ShoppingListItem(
              product: product,
              inCart: store.state.shoppingCart.contains(product),
              onCartChanged: handleCartChanged,
            );
          }).toList()
        );
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          tooltip: "返回",
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: new Text("Shopping List", textAlign: TextAlign.left,),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: "搜索",
            onPressed: null,
          )
        ],
      ),
      body: body,
    );
  }
}
