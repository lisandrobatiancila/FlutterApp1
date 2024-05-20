import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter App 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String inputField = "";
  final TextEditingController _inputTextFieldCTRL = TextEditingController();

  void onPressNumberOne() {
    inputField+="1";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberTwo() {
    inputField+="2";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberThree() {
    inputField+="3";
    _inputTextFieldCTRL.text = inputField;
  }

  void clearInput() {
    inputField = "";
    _inputTextFieldCTRL.text = inputField;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: const Text("Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: _inputTextFieldCTRL,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "0.00"
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: onPressNumberOne,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          child: Text("1")
                        ),
                        OutlinedButton(
                          onPressed: onPressNumberTwo,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          child: Text("2")
                        ),
                        OutlinedButton(
                          onPressed: onPressNumberThree,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          child: Text("3")
                        ),
                        OutlinedButton(
                          onPressed: (){},
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          child: Text("+")
                        )
                      ],
                    )
                  ],
                ),
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("4")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("5")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("6")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("-")
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("7")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("8")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("9")
                          ),
                          OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder()
                            ),
                            child: Text("*")
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                // child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder()
                        ),
                        onPressed: () {

                        }, 
                        child: Text("0")
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder()
                        ),
                        onPressed: () {

                        }, 
                        child: Text(".")
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder()
                        ),
                        onPressed: () {

                        }, 
                        child: Text("/")
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder()
                        ),
                        onPressed: clearInput, 
                        child: Text("C")
                      ),
                    ],
                  ),
                // ),
              )
            ],
          )
        ],
      )
    );
  }
}
