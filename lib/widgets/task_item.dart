import 'package:flutter/material.dart';

import 'task_checkbox.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task.',
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        onCheckboxClick: (bool? newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },
      ),
    );
  }
}
