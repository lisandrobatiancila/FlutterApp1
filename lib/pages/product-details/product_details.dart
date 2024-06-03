import 'package:fa1/model/product.model.dart';
import 'package:fa1/utility/text_update.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  ProductDetails({super.key, required this.productModel});
  ProductModel productModel;

  @override
  _ProductDetails createState () => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
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
              "Name: ${upperCaseFirstCharacter(widget.productModel.name)}",
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            Text(
              "Price: ${widget.productModel.price}",
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            Text(
              "Quantity: ${widget.productModel.quantity}",
              style: const TextStyle(
                fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  } 
}
