import 'dart:math';

import 'package:flutter/material.dart';

abstract class StudentsModel {
  String? name;
  int? age;
  String? course;
  
  Widget StudentsUI(BuildContext context);
}

class Students extends StudentsModel {
  final String name;
  final int age;
  final String course;

  Students(this.name, this.age, this.course);

  @override
  Widget StudentsUI(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        color: Color.fromARGB(255, 255, 229, 237),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Text(age.toString()),
          Text(course),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder()
            ),
            onPressed: () {},
            child: Text("Buy"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder()
            ),
            onPressed: () {},
            child: Text("View"),
          )
        ],
      ),
    );
  }
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Shop",
      home: ShopPage(title: "Tests")
    );
  }
}

class ShopPage extends StatefulWidget {
  const ShopPage({super.key, required this.title});

  final String? title;
  @override
  State<ShopPage> createState() => _ShopPage();
}

class _ShopPage extends State<ShopPage> {
  
  final List<Students> _students = List.generate(20, (i) => Students("Mikel "+i.toString(), 23, "BSIT"));
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
        backgroundColor: Colors.red[300],
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView.builder(itemCount: _students.length, itemBuilder: (context, index) {
        return ListTile(
          title: _students[index].StudentsUI(context),
        );
      },),
    );
  }
}
