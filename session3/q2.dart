void main() {
  /*
2. Grocery List Manager:
Implement a program that uses a List to store grocery items.
It should allow adding, removing, and displaying items.
Use functions with return types and optional/named parameters.
Make sure to handle possible null values.
   */
  GroceryListManager myAIAssistant =
  GroceryListManager(["Yogurt", "Milk", "Pineapple"]);
  myAIAssistant.addItem("HeadSet");
  myAIAssistant.removeItem("Milk");
  myAIAssistant.displayInfo();

}

class GroceryListManager {
  List<String> myGroceryItems = [];

  GroceryListManager([List<String>? initialItems])
      : myGroceryItems = initialItems ?? [] {
    if (myGroceryItems.isEmpty) {
      myGroceryItems.add("Empty List");
    }
  }

  void addItem(String newItem) {
    myGroceryItems.add(newItem);
    print("Adding $newItem to the List successfully");
    print("Your updated List is: $myGroceryItems");
  }

  void removeItem(String groceryItem) {
    if(myGroceryItems.contains(groceryItem)){
      myGroceryItems.remove(groceryItem);
      print("Removing $groceryItem successfully");
      print("Your updated List:");
      displayInfo();
    } else {
      print("The $groceryItem does not exist in the list");
      displayInfo();
    }
  }

  void displayInfo() {
    print("Your current List is: ");
    print("==============================");
    int counter = 0;
    for (var item in myGroceryItems) {
      print("${++counter} $item");
    }
  }
}
