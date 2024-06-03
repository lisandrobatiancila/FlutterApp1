import 'dart:collection';

import 'package:fa1/model/product.model.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<ProductModel> _cartItem = [];

  UnmodifiableListView<ProductModel> get cartItem => UnmodifiableListView(_cartItem);

  void addToCart(ProductModel item) {
    _cartItem.add(item);
    notifyListeners();
  }
  int cartSize() {
    return _cartItem.length;
  }
  List<ProductModel> cartItems() {
    return cartItem;
  }
}
