class Task {
  String title;
  // String? name;
  String content;
  DateTime deadline;
  Task(
      {required this.title,
      required this.content,
      // required this.name,
      required this.deadline});

  bool isOverdue() {
    return deadline.isBefore(DateTime.now());
  }
}
