// import 'dart:ffi';
import 'dart:math';

import 'package:fa1/screens/SampleScreen.dart';
import 'package:fa1/screens/ShopScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';


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

  void onPressAddition() {
    inputField+= "+";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberFour() {
    inputField+="4";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberFive() {
    inputField+="5";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberSix() {
    inputField+="6";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressSubtraction() {
    inputField+="-";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberSeven() {
    inputField+="7";
    _inputTextFieldCTRL.text = inputField;
  }
  
  void onPressNumberEight() {
    inputField+="8";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressNumberNine() {
    inputField+="9";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressMultiplication() {
    inputField+="*";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressZero() {
    inputField+="0";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressDot() {
    inputField+=".";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressDivision() {
    inputField+="/";
    _inputTextFieldCTRL.text = inputField;
  }

  void onPressCompute() {
    String value = _inputTextFieldCTRL.text;
    String operator = "";
    String firstOperand = "";
    String secondOperand = "";
    bool isNextOperand = false;

    for(var i = 0; i < value.length; i ++) {
      if (value[i] == "+") {
        operator = "+";
        isNextOperand = true;
      } else if (value[i] == "-") {
        operator = "-"; 
        isNextOperand = true;
      } else if (value[i] == "*") {
        operator = "*";
        isNextOperand = true;
      } else if (value[i] == "/") {
        operator = "/";
        isNextOperand = true;
      } else {
        if (!isNextOperand){
          firstOperand+= value[i];
        } else if(isNextOperand) {
          secondOperand+=value[i];
        }
      }
    } // end of for loop

    double firstOperandValue = double.parse(firstOperand);
    double secondOperandValue = double.parse(secondOperand);

    if (operator == "+") {
      inputField = (firstOperandValue+secondOperandValue).toString();
      _inputTextFieldCTRL.text = inputField;
    } else if (operator == "-") {
      inputField = (firstOperandValue-secondOperandValue).toString();
      _inputTextFieldCTRL.text = inputField;
    } else if (operator == "*") {
      inputField = (firstOperandValue*secondOperandValue).toString();
      _inputTextFieldCTRL.text = (firstOperandValue*secondOperandValue).toString();
    } else if (operator == "/") {
      inputField = (firstOperandValue/secondOperandValue).toString();
      _inputTextFieldCTRL.text = (firstOperandValue/secondOperandValue).toString();
    }
  }

  void onPressShop() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SampleScreen()));
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
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                            onPressed: onPressAddition,
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
                              onPressed: onPressNumberFour,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("4")
                            ),
                            OutlinedButton(
                              onPressed: onPressNumberFive,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("5")
                            ),
                            OutlinedButton(
                              onPressed: onPressNumberSix,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("6")
                            ),
                            OutlinedButton(
                              onPressed: onPressSubtraction,
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
                              onPressed: onPressNumberSeven,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("7")
                            ),
                            OutlinedButton(
                              onPressed: onPressNumberEight,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("8")
                            ),
                            OutlinedButton(
                              onPressed: onPressNumberNine,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder()
                              ),
                              child: Text("9")
                            ),
                            OutlinedButton(
                              onPressed: onPressMultiplication,
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
                          onPressed: onPressZero, 
                          child: Text("0")
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          onPressed: onPressDot, 
                          child: Text(".")
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder()
                          ),
                          onPressed: onPressDivision,
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
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    minimumSize: Size(200, 45)
                  ),
                  onPressed: onPressCompute, 
                  child: Text("=")
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: ElevatedButton(
                    onPressed: onPressShop,
                    child: Text(
                      "Shop",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red[300]
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
