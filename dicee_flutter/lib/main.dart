import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {//The underscore _ at the beginning of the name makes this class private to the current file.
  int leftDiceNumber = 2;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
  void changeDiceFace() {
      setState(() {//When we call setState(), we're essentially telling Flutter: "The
// internal state of this widget has changed, and the UI might need to be updated."
// Flutter then marks the widget as "dirty," meaning it needs to be rebuilt.
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//Notes:
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);//MyStatefulWidget: This is the constructor for MyStatefulWidget.
// //const: This keyword indicates that the widget is immutable (its properties cannot be changed after creation). This is an optimization.
// //{Key? key}: This is an optional parameter that allows Flutter to uniquely identify this widget in the widget tree. Keys are important for preserving state when the widget tree changes.@override
// //: super(key: key): This calls the constructor of the parent class (StatefulWidget) and passes the key along.
//   @override//@override: This annotation indicates that this method is overriding a method from the parent class (StatefulWidget).
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();// This is a crucial method that StatefulWidget requires you to implement.
// }//State<MyStatefulWidget> createState(): This method returns an instance of the State class associated with this StatefulWidget. The <MyStatefulWidget> part specifies the type of widget this state is for.
// //=> _MyStatefulWidgetState();: This is a concise way to define a function that simply returns a new instance of _MyStatefulWidgetState.

// //State<MyStatefulWidget> createState() => _MyStatefulWidgetState(); is shorthand for below mentioned.
// // State<MyStatefulWidget> createState() {
// //   return _MyStatefulWidgetState();
// // }

// //_MyStatefulWidgetState. The underscore _ at the beginning of the name makes this class private to the current file. This class is the state associated with MyStatefulWidget. It holds the mutable data that can change over time.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int counter = 0; // This is part of the state

//   @override
//   Widget build(BuildContext context) {
//     // ... widget building logic
//   }
// }