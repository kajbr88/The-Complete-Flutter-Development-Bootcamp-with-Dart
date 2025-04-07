import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

// Todoey AppIcon attribution:
// https://www.freepik.com/search?format=search&iconType=standard&last_filter=page&last_value=4&page=4&query=Todo+&type=icon#uuid=34c47d6c-06b3-40d4-8713-f0af7c2fe751
