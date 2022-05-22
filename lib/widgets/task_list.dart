import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = <Task>[
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskItem(
          title: tasks[index].title,
          isChecked: tasks[index].isDone,
          onCheckboxClick: (bool? newValue) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
    );
  }
}
