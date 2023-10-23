import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\nTask Manager Menu:");
    print("1. Add Task");
    print("2. List Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Enter your choice (1/2/3/4): ");
    String choice = stdin.readLineSync()!.trim();

    switch (choice) {
      case '1':
        stdout.write("Enter the task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task added: $task");
        break;
      case '2':
        print("\nTasks:");
        for (int i = 0; i < tasks.length; i++) {
          print("$i. ${tasks[i]}");
        }
        break;
      case '3':
        if (tasks.isNotEmpty) {
          stdout.write("Select which task to be removed: ");
          int taskNumber = int.parse(stdin.readLineSync()!);
          if (taskNumber >= 0 && taskNumber < tasks.length) {
            String removedTask = tasks.removeAt(taskNumber);
            print("Task removed: $removedTask");
          } else {
            print("Invalid task number.");
          }
        } else {
          print("No tasks to remove.");
        }
        break;
      case '4':
        print("Exiting Task Manager. Goodbye!");
        return;
      default:
        print("Invalid choice. Choose 1, 2, 3, or 4.");
    }
  }
}
