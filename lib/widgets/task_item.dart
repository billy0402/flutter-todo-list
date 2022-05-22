import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.title,
    required this.isChecked,
    required this.onCheckboxClick,
  }) : super(key: key);

  final String title;
  final bool isChecked;
  final Function(bool?) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: onCheckboxClick,
      ),
    );
  }
}
