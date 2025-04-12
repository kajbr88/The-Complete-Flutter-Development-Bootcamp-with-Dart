// import 'dart:io';

// void main() {
//   performTasks();
// }

// void performTasks() async {
//   task1();
//   String task2Result = await task2();
//   task3(task2Result);
// }

// void task1() {
//   String? result = 'task 1 data';
//   print('Task 1 complete');
// }

// Future task2() async {
//   Duration threeSeconds = Duration(seconds: 3);
  
//    String? result;

//   await Future.delayed(threeSeconds, () {
//     result = 'task 2 done';
//     print('Task 2 complete');
//   });
//   return result;
// }

// void task3(String task2Data) {
//   String result = 'task 3 data';
//   print('Task 3 complete with $task2Data');
// }

// // import 'dart:io';
//
// // void main() {
// //   performTasks();
// // }
//
// // void performTasks() async {
// //   task1();
// //   // print(task2());
// //   String? task2Result = await task2();
// //   task3(task2Result);
// // }
//
// // void task1() {
// //   String result = 'task 1 data';
// //   print('Task 1 complete');
// // }
//
// // Future task2() async {
// //   Duration threeSeconds = Duration(seconds: 3);
// //   String? result;
// //   await Future.delayed(threeSeconds, () {
// //     result = 'task 2 data';
// //     print('Task 2 complete');
// //   });
// //   return result;
// // }
//
// // void task3(String? task2Data) {
// //   String? result = 'task 3 data';
// //   print('Task 3 complete with $task2Data');
// // }
//
// import 'package:flutter/material.dart';
// import 'package:clima1/screens/loading_screen.dart';
//
// void main() {
//   runApp(
//     MaterialApp(home: MyApp()), // use MaterialApp
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     String myMargin = '15';
//     double? myMarginAsADouble;
//
//     try {
//       myMarginAsADoublez = double.parse(myMargin);
//     } catch (e) {
//       print(e);
//     }
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(myMarginAsADouble ?? 30.0),
//         color: Colors.red,
//       ),
//     );
//   }
// }
