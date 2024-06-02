// import 'dart:ffi';
import 'dart:math';

import 'package:fa1/model/product.model.dart';
import 'package:fa1/pages/add-product/add_product.dart';
import 'package:fa1/pages/product-details/product_details.dart';
import 'package:fa1/state/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyAppEntry());
}

class MyAppEntry extends StatelessWidget {
  Product p = Product();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(titles: "Ecommerce", product: p,),
    );
  }
}

class MyApp extends StatefulWidget {
  var titles = "Demo App";
  Product product;
  MyApp({super.key, required this.titles, required this.product});

  @override
  _MyApp createState () => _MyApp();
}

class _MyApp extends State<MyApp> {
  late Product _productModel;
  var _productSize = 0;
  List<ProductModel> _itemList = [];
  @override
  void initState() {
    super.initState();
    _productModel = widget.product;
    _productSize = _productModel.getAllProduct().length;
    _itemList = _productModel.getAllProduct();
  }
  void onAddNewItem () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductForm())
    );
  }
  void onItemDetails(ProductModel item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetails()
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titles),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView.builder(
        itemCount: _productSize,
        itemBuilder: (context, index) => 
          Container(
            padding: const EdgeInsets.all(3.0),
            margin: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1.0,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              children: <Widget>[
                Text(
                  _itemList[index].name,
                  style: const TextStyle(
                    fontSize: 25.0
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OutlinedButton(
                      onPressed: () {
                        onItemDetails(_itemList[index]);
                      },
                      child: const Text("Details"),
                    ),
                    const Text("  "),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Add to cart"),
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onAddNewItem,
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }

}