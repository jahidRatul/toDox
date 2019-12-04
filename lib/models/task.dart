class Task {
  bool isDone;
  String name;
  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
