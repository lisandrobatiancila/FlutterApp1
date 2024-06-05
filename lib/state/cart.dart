import 'dart:collection';

import 'package:fa1/model/cart.model.dart';
import 'package:fa1/model/product.model.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<CartModel> _cartItem = [];

  UnmodifiableListView<CartModel> get cartItem => UnmodifiableListView(_cartItem);

  void addToCart(ProductModel item) {
    CartModel cartModel;
    bool _isFound = false;

    if (_cartItem.isEmpty) {
      cartModel = CartModel(item.id, item.name, item.price, 1);
      _cartItem.add(cartModel);
    } else {
      for(var index = 0; index < _cartItem.length; index++) {
        if (_cartItem[index].id == item.id) {
          _cartItem[index].quantity += 1;
          _isFound = true;
          break;
        }
      }
      if (!_isFound) {
        cartModel = CartModel(item.id, item.name, item.price, item.quantity);
        _cartItem.add(cartModel);
      }
    }
    // _cartItem.add(cartModel);

    notifyListeners();
  }
  int cartSize() {
    return _cartItem.length;
  }
  List<CartModel> cartItems() {
    return cartItem;
  }
}
