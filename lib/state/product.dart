import 'dart:collection';

import 'package:fa1/model/product.model.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Product extends ChangeNotifier{
  List<ProductModel> _product = [];

  UnmodifiableListView<ProductModel> get product => UnmodifiableListView(_product);

  List<ProductModel> getAllProduct() {
    _product.add(ProductModel(const Uuid().v1(), "hansel", 12, 5));
    _product.add(ProductModel(const Uuid().v1(), "fita", 6, 5));
    _product.add(ProductModel(const Uuid().v1(), "combi", 8, 5));
    
    return _product;
  }

  void addNewProduct(ProductModel item) {
    _product.add(item);
    notifyListeners();
  }

}
