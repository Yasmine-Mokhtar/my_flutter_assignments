void main() {
  /*
  3. To-Do List App:
  Create a to-do list program using a Map where each task has a description,
  due date, and completion status (as bool). Implement methods to add, remove, and update tasks.
  */

  ToDoListApp myToDoList = ToDoListApp();

  myToDoList.addTask("Go to Library", "2024-03-20");
  myToDoList.addTask("Complete Flutter project", "2024-03-25");
  myToDoList.addTask("Do meditation", "2024-03-22");

  myToDoList.displayInfo();

  myToDoList.removeTask("Do meditation");

  myToDoList.updateTask("Complete Flutter project", true);

  myToDoList.displayInfo();
}

class ToDoListApp {
  Map<String, List> myList = {};

  void addTask(String taskTitle, String dueDate) {
    myList[taskTitle] = [dueDate, false];
    print("'$taskTitle' has been added to your To-Do List.");
  }

  void removeTask(String taskTitle) {
    if (myList.containsKey(taskTitle)) {
      myList.remove(taskTitle);
      print("'$taskTitle' has been removed.");
    } else {
      print("Task '$taskTitle' not found.");
    }
  }

  void updateTask(String taskTitle, bool isCompleted) {
    if (myList.containsKey(taskTitle)) {
      myList[taskTitle]![1] = isCompleted;
      print("Task '$taskTitle' updated to '${isCompleted ? "Completed" : "Not Completed"}'.");
    } else {
      print("Task '$taskTitle' not found.");
    }
  }

  void displayInfo() {
    if (myList.isEmpty) {
      print("Your To-Do List is empty.");
      return;
    }

    print("To-Do List:");
    print("==============================");
    myList.forEach((task, details) {
      print(task);
      print("Due Date: ${details[0]}");
      print("Completed: ${details[1] ? "Yes" : "No"}\n");
    });
    print("==============================");
  }
}
