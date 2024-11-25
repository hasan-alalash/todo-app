import 'package:flutter/material.dart';
import 'package:to_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  // قائمة المهام
  List<Task> tasks = [
    Task(name: 'Go to the gym'),
    Task(name: 'Buy groceries'),
    Task(name: 'Complete Flutter project'),
  ];

  // إضافة مهمة جديدة
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners(); // إعلام المستمعين بالتغيير
  }

  // تحديث حالة المهمة (تم/لم يتم)
  void updateTask(Task task) {
    task.doneChange();
    notifyListeners(); // إعلام المستمعين بالتغيير
  }

  // حذف مهمة
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners(); // إعلام المستمعين بالتغيير
  }
}
