// import 'dart:ffi';
import 'dart:math';

import 'package:fa1/model/product.model.dart';
import 'package:fa1/pages/add-product/add_product.dart';
import 'package:fa1/pages/product-details/product_details.dart';
import 'package:fa1/state/cart.dart';
import 'package:fa1/state/product.dart';
import 'package:fa1/utility/text_update.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyAppEntry());
}

class MyAppEntry extends StatelessWidget {
  Product product = Product();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Product>(
          create: (context) => Product(),
        ),
        // ChangeNotifierProvider<Cart>(create: (context) => Cart()),
        // Provider(create: (context) => Product())
      ],
      child: MyApp(titles: "Ecommerce", product: product),
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

  @override
  void initState() {
    super.initState();
    var t = context.read<Product>();
    t.getAllProduct();
    // context.read<Product>() = _productModel.getAllProduct();
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
        builder: (context) => ProductDetails(productModel: item)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Product>(
      builder: (context, product, child) {
        return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(widget.titles),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.shopping_cart
                  ),
                  Text(product.product.length.toString())
                ],
              ), // CART
            )
          ],
        ),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView.builder(
        itemCount: product.product.length,
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
                  upperCaseFirstCharacter(product.product[index].name),
                  style: const TextStyle(
                    fontSize: 25.0
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OutlinedButton(
                      onPressed: () {
                        var item = product.product[index];

                        onItemDetails(item);
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
        onPressed: () {
          onAddNewItem();
        },
        child: const Icon(
          Icons.add
        ),
      ),
    );
      },
    );
  }

}