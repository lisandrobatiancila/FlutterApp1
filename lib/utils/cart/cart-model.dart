import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';

class Item {
  String? name;
  int? age;
  String? course;

  Item(this.name, this.age, this.course);
}

class CartModel extends ChangeNotifier {
  final List<Item> _cart = [];

  List<Item> get cartItems => _cart;

  void add(Item item) {
    _cart.add(item);
    
    notifyListeners();
  }

  int cartItemSize() {
    print("CALLED >> "+cartItems.length.toString());
    for (var ci in cartItems) {
      print(ci.name);
    }
    return cartItems.length;
  }
}
