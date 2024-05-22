import 'package:fa1/utils/cart/cart-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartSize extends StatelessWidget {
const CartSize({ super.key });

  @override
  Widget build(BuildContext context){
    return Consumer<CartModel>(
      builder: (context, cart, child) => Stack(
        children: <Widget>[
          Text(cart.cartItemSize().toString())
        ],
      )
    );
  }
}
