import 'package:flutter/material.dart';

class Product {
  const Product({
    this.name
  });

  final String name;
}

typedef void CartChanedCallback(
  Product product,
  bool inCart
);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({
    this.product,
    this.inCart,
    this.onCartChanged
  }): super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChanedCallback onCartChanged;

  Color getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle getTextStyle(BuildContext context) {
    return !inCart ? null : new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: getColor(context),
        child: new Text(product.name[0])
      ),
      title: new Text(
        product.name,
        style: getTextStyle(context),
        maxLines: 2,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
