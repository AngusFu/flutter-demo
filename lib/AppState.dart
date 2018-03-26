import './ShoppingListItem.dart';

class AppState {
  int count = 0;

  Set<Product> shoppingCart = new Set<Product>();
  List<Product>productList = <Product>[
    new Product(name: '鸡蛋'),
    new Product(name: '面粉'),
    new Product(name: '巧克力脆片'),
    new Product(name: '不知道什么'),
  ];
}
