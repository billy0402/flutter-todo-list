import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    Key? key,
    required this.isChecked,
    required this.onCheckboxClick,
  }) : super(key: key);

  final bool isChecked;
  final Function(bool?) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: onCheckboxClick,
    );
  }
}
