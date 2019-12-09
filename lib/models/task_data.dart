import 'package:flutter/foundation.dart';
import 'package:to_dox/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy me choco'),
    Task(name: 'buy me choco'),
    Task(name: 'buy me choco'),
  ];

  int get countTasks {
    return tasks.length;
  }
}
