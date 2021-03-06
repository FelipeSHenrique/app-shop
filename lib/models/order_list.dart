import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shop/models/order.dart';

import 'cart.dart';

class OrderList with ChangeNotifier {
  List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  // retorna a quantidade total
  int get itemsCount {
    return _items.length;
  }

  void addOrder(Cart cart) {
    _items.insert(
      0,
      Order(
        id: Random().nextDouble().toString(),
        total: cart.totalAmount,
        date: DateTime.now(),
        products: cart.items.values.toList()
      ),
    );
    notifyListeners();
  }
}
