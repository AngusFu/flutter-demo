import 'package:flutter/material.dart';
import './ShoppingListItem.dart';

class ShoppingListPage extends StatefulWidget {
  ShoppingListPage({
    Key key,
    this.products
  }) : super(key: key);

  final List<Product> products;

  @override
  ShoppingListPageState createState() {
    return new ShoppingListPageState();
  }
}

class ShoppingListPageState extends State<ShoppingListPage> {
  int count = 0;
  Set<Product> shoppingCart = new Set<Product>();

  void handleCartChanged (Product product, bool inCart) {
    setState(() {
      inCart
        ? shoppingCart.add(product)
        : shoppingCart.remove(product);
    });
  }

  void onPressed () {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List products = widget.products.map((Product product) {
      return new ShoppingListItem(
        product: product,
        inCart: shoppingCart.contains(product),
        onCartChanged: handleCartChanged,
      );
    }).toList();

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
      body: new Column(
        children: products
      ),
      // floatingActionButton: new CounterIncrementor(onPressed: onPressed),
    );
  }
}
