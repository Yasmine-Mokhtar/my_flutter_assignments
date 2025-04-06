void main() {
  /*
 2. Grocery List Manager:
Implement a program that uses a List to store grocery items. It should allow adding,
removing, and displaying items. Use functions with return types and optional/named parameters.
Make sure to handle possible null values.
   */

  GroceryListManager myGroceries = GroceryListManager();
  myGroceries.addItem(newItem: "Yogurt");
  myGroceries.addItem(newItem: "Nescafe");
  myGroceries.displayInfo();
}

class GroceryListManager {
  List<String> items = [];

  void addItem({required String newItem}) {
    if (items.contains(newItem)) {
      print("This item: $newItem is already exist in your list");
    } else {
      items.add(newItem);
      print("New item: $newItem has been added to your list successfully");
    }
  }

  void removeItem({required String item}) {
    if (items.contains(item)) {
      items.remove(item);
      print("The item: $item has been removed from the list successfully");
    } else {
      print("The item: $item does not exist in your list");
    }
  }

  void displayInfo() {
    if (items.isEmpty) {
      print("Your grocery list is empty");
    } else {
      print("Grocery List 🥦🛒 ");
      for (int i = 0; i < items.length; i++) {
        print("${i + 1}- ${items[i]}");
      }
    }
  }
}
