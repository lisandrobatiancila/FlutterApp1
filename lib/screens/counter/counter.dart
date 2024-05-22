import 'package:fa1/utils/counter/counter-model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _Counter();
}

class _Counter extends State<Counter> {
    CounterModel c = CounterModel();

    int _counter = 0;

    void onIncrement() {
      c.incrementCount();
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Consumer<CounterModel>(
          builder:(context, value, child) {
            child: return Container(
              child: Column(
                children: <Widget>[
                  const Text("Current count is: "),
                  Text("0s"),
                  ElevatedButton(
                    onPressed: onIncrement,
                    child: Text("Increment"),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
}