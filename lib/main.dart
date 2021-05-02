import 'package:flutter/material.dart';
import 'package:flutter_intro_mobx/feature/task/view/task_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple MobX Use with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TaskView(),
    );
  }
}
