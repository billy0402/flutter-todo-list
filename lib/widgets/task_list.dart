import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        final Task task = widget.tasks[index];
        return TaskItem(
          title: task.title,
          isChecked: task.isDone,
          onCheckboxClick: (bool? newValue) {
            setState(() {
              task.toggleDone();
            });
          },
        );
      },
    );
  }
}
