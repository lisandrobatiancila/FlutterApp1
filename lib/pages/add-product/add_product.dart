import 'package:fa1/model/product.model.dart';
import 'package:fa1/state/product.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return AddProductForm();
  }
}
class AddProductForm extends StatefulWidget{
  AddProductForm({super.key});
  @override
  _ItemDetail createState () => _ItemDetail();
}

class _ItemDetail extends State<AddProductForm> {
  late TextEditingController _itemName;
  late TextEditingController _itemPrice;
  late TextEditingController _itemQuantity;
  late Product _product;
  @override
  void initState() {
    super.initState();
    _itemName = TextEditingController();
    _itemPrice = TextEditingController();
    _itemQuantity = TextEditingController();
    _product = context.read<Product>();
  }
  
  void onAddNewProduct() {
    String name = _itemName.text;
    double price = double.parse(_itemPrice.text);
    int quantity = int.parse(_itemQuantity.text);
  
    ProductModel productItem = ProductModel(const Uuid().v1(), name, price, quantity);
    _product.addNewProduct(productItem);
    Fluttertoast.showToast(msg: "${productItem.name} was added!", toastLength: Toast.LENGTH_LONG);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Product>(
      builder: (context, product, index) {
        return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: TextField(
                controller: _itemName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: TextField(
                controller: _itemPrice,
                decoration: const InputDecoration(
                  labelText: "Price",
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            TextField(
              controller: _itemQuantity,
              decoration: const InputDecoration(
                labelText: "Quantity",
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.number,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  minimumSize: const Size(200.0, 50.0),
                ),
                onPressed: onAddNewProduct, 
                child: const Text("Add Product")),
            ),
          ],
        ),
      ),
    );
      }
    );
  }
}