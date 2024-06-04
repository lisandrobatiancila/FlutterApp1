import 'package:fa1/state/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CartState();
  }
}

class CartState extends StatefulWidget {
  @override
  _Cart createState () => _Cart();
}

class _Cart extends State<CartState> {
  late Cart _cart;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cart = context.read<Cart>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Items"),
        backgroundColor: Colors.blue[300],
      ),
      body: Text("Welcome to cart items: ${_cart.cartItem.length.toString()}"),
    );
  }
}