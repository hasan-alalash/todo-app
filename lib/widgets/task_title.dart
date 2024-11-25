import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxChange;
  final VoidCallback onDelete;

  TaskTitle({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxChange,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(

            icon: Icon(Icons.delete, color: Colors.teal),
            onPressed: onDelete,
          ),
          Checkbox(
            value: isChecked,
            onChanged: checkboxChange,
          ),

        ],
      ),
    );
  }
}
