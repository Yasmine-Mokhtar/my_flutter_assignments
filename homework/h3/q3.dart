void main() {
  /*
3. To-Do List App:
Create a to-do list program using a List where each item has a description,
due date, and completion status (as bool).
Implement methods to add, remove, and update tasks, including the use of for-each loops.
   */
  ToDoItem x = ToDoItem(
      itemTitle: "Meditation",
      description: "Don't forget to meditate before work",
      dueDate: "24/12/2025",
      isCompleted: false);

  ToDoItem y = ToDoItem(
      itemTitle: "Travelling",
      description: "Don't forget to Book your hotel",
      dueDate: "24/12/2025",
      isCompleted: false);

  ToDoListApp z = ToDoListApp();
  z.addNewItem(x);
  //z.addNewItem(y);
  //z.addNewItem(x);
  z.removeItem(y);
}

class ToDoItem {
  String itemTitle;
  String description;
  String dueDate;
  bool isCompleted;
  ToDoItem(
      {required this.itemTitle,
      required this.description,
      required this.dueDate,
      required this.isCompleted});
}

class ToDoListApp {
  List<ToDoItem> toDoItems = [];

  void addNewItem(ToDoItem newItem) {
    bool isFound = false;
    for (var item in toDoItems) {
      if (newItem.itemTitle == item.itemTitle) {
        isFound = true;
      }
    }
    if (isFound) {
      print("This item: ${newItem.itemTitle} is already exist");
    } else {
      toDoItems.add(newItem);
      print("New item: ${newItem.itemTitle} has been added successfully");
    }
  }

  void removeItem(ToDoItem newItem) {
    bool isFound = false;
    for (var item in toDoItems) {
      if (newItem.itemTitle == item.itemTitle) {
        isFound = true;
      }
    }
    if (isFound) {
      toDoItems.remove(newItem);
      print("This item: ${newItem.itemTitle} has been removed from your todo list successfully");
    } else {
      print("This item: ${newItem.itemTitle} is not exist");
    }
  }

  void updateTask(String taskTitle, bool isCompleted){
    bool isUpdated = false;
    for(var item in toDoItems){
      if(item.itemTitle == taskTitle){
        item.isCompleted = isCompleted;
        isUpdated = true;
      }
    }
    if(isUpdated){
      print("The task titled: $taskTitle completion has been updated to: $isCompleted");
    } else {
      print("This item: $taskTitle is not exist");
    }
  }

  void printAllTasks() {
    print("📋 Your To-Do List:");
    toDoItems.forEach((item) => print(item));
  }

}


