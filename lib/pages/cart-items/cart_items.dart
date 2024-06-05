import 'package:fa1/state/cart.dart';
import 'package:fa1/utility/text_update.dart';
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
  late String _totalPayment;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cart = context.read<Cart>();
    _totalPayment = _cart.totalPayment();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Items"),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 140,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.black12
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        upperCaseFirstCharacter(_cart.cartItem[index].name),
                        style: const TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("@ ${_cart.cartItem[index].price} X ${_cart.cartItem[index].quantity} = ${(_cart.cartItem[index].price * _cart.cartItem[index].quantity)}"),
                        ])
                    ],
                  ),
                ),
                itemCount: _cart.cartItem.length,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Total: $_totalPayment",
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      )
    );
  }
}