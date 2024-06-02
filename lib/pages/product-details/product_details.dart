import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  const ProductDetails({super.key});

  @override
  _ProductDetails createState () => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
    );
  } 
}
