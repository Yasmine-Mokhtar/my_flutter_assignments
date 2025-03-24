import 'dart:io';

void main() {
/*
2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding,
removing, and displaying items.
Use functions with return types and optional/named parameters.
Make sure to handle possible null values.
 */
  GroceryListManager myGroceries = GroceryListManager(groceryItems: []);
  myGroceries.options();
}

class GroceryListManager {
  List<String> groceryItems = [];
  GroceryListManager({required this.groceryItems});

  void options (){
    stdout.write("""Please, Select a number: 
    1- Adding item
    2- Removing Item
    3- Displaying info
    4- Exit\n""");
    int myOption = int.parse(stdin.readLineSync()!);

    String item;
    switch(myOption){
      case 1 :
        stdout.write("Please, Enter the item you wanna add: ");
        item = stdin.readLineSync()!;
        addGroceryItem(item);
        break;

      case 2:
        stdout.write("Please, Enter the item you wanna remove: ");
        item = stdin.readLineSync()!;
        removeGroceryItem(item);
        break;

      case 3:
        displayInfo();
        break;

      case 4:
        print("Program terminated");
        break;
    }

    if(myOption > 4 || myOption <= 0){
      print("Invalid Input, Please, Select a number from 1 to 4");
    }
  }


  //Adding a new item
  void addGroceryItem(String newItem) {
    // Checking null or Empty
    if (newItem.trim().isEmpty) {
      print("Invalid Input, cannot be null or empty");
    } else {
      if (groceryItems.contains(newItem)) {
        print("$newItem: This item is already exist");
      } else {
        groceryItems.add(newItem);
        print("$newItem has been added to your list successfully");
      }
      print("Your list is: ");
      displayInfo();
    }
  }

  // Remove item
  void removeGroceryItem(String item) {
    if (groceryItems.contains(item)) {
      groceryItems.remove(item);
      print("$item has been removed successfully");
    } else {
      print("$item is not exist in your list");
    }
    print("Your list is: ");
    displayInfo();
  }

  //Display Info
  void displayInfo() {
    String add = "NO";
    String myNewItem;
    if (groceryItems.isEmpty) {
      print("Your grocery List is Empty now");
      print("Do you want to add item to it[YES, NO]");
      add = stdin.readLineSync()!.trim();
      if (add.toUpperCase() == "YES") {
        stdout.write("Please write the item here: ");
        myNewItem = stdin.readLineSync()!;
        addGroceryItem(myNewItem);
      } else {
        print("Program terminated");
      }
    }

    int prefix = 0;
    for (var item in groceryItems) {
      print("${++prefix} $item");
    }
  }
}
