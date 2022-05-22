import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_data.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            final Task task = taskData.tasks[index];
            return TaskItem(
              title: task.title,
              isChecked: task.isDone,
              onCheckboxClick: (bool? newValue) {
                taskData.updateTask(task);
              },
              onLongPress: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
