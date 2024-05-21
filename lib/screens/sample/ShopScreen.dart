import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Page',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      //   useMaterial3: true
      // ),
      home: ShopPage(title: "Tests",),
    );
  }
}

class ShopPage extends StatefulWidget {
  const ShopPage({super.key, required this.title});

  final String title;
  @override
  State<ShopPage> createState() => _ShopState();
}

class _ShopState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The second page"),
        backgroundColor: Colors.red[300],
      ),
      body: Text("tests body"),
    );
  }
}