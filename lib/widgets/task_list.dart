import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:to_do_app/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTitle(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxChange: (newValue) {
                taskData.updateTask(task);
              },
              onDelete: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
