import 'dart:io';

void main() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print('\n=== Simple To-Do App ===');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Remove Task');
    print('4. Exit');
    stdout.write('Choose an option (1-4): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        
        stdout.write('Enter a new task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print('Task added successfully!');
        } else {
          print('Task cannot be empty.');
        }
        break;

      case '2':
        
        print('\n Your To-Do List:');
        if (tasks.isEmpty) {
          print('No tasks available.');
        } else {
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case '3':
        
        if (tasks.isEmpty) {
          print(' No tasks to remove.');
        } else {
          stdout.write('Enter the task number to remove: ');
          int index = int.parse(stdin.readLineSync()!);
          if (index > 0 && index <= tasks.length) {
            print('🗑️ Removed: ${tasks[index - 1]}');
            tasks.removeAt(index - 1);
          } else {
            print('Invalid task number.');
          }
        }
        break;

      case '4':
        
        print('Exiting the app. Goodbye!');
        running = false;
        break;

      default:
        print(' Invalid option. Please choose between 1-4.');
    }
  }
}
