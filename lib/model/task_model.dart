class Task {
  String title;
  String description;

  Task({required this.title, required this.description});
}

List<Task> taskList = [
  Task(title: 'Task 1', description: 'Makan'),
  Task(title: 'Task 2', description: 'Minum'),
  Task(title: 'Task 3', description: 'Tidur')
];
