import 'package:flutter/material.dart';

import 'task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        TaskItem(),
        TaskItem(),
        TaskItem(),
      ],
    );
  }
}
