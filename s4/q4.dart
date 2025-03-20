import 'dart:io';

void main() {
  /*
4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
   */

  Map<String, int> fruitPrices = {
    "Pineapple": 100,
    "Grapefruit": 200,
    "Watermelon": 50,
    "Grapes": 20
  };

  stdout.write("Please, Enter the name of the fruit: ");
  String fruitName = stdin.readLineSync()!.trim();
  if (fruitName.isNotEmpty) {
    print(getPrice(fruitName, fruitPrices));
  } else {
    print("Invalid input, please Enter a valid input");
  }
}

int getPrice(String fruitName, Map<String, int> calculateFruitPrices) {
  if (calculateFruitPrices.containsKey(fruitName)) {
    return calculateFruitPrices[fruitName]!;
  } else {
    return -1;
  }
}
