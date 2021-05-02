import 'package:flutter/material.dart';

import 'package:flutter_intro_mobx/feature/task/view-model/task_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskView extends StatelessWidget {
  final _viewModel = TaskViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _viewModel.incrementCounter();
        },
      ),
      appBar: AppBar(title: Text("Introduction to MobX")),
      body: Center(
        child: Observer(
            builder: (_) => Text(
                  _viewModel.counter.toString(),
                  style: TextStyle(fontSize: 50),
                )),
      ),
    );
  }
}
