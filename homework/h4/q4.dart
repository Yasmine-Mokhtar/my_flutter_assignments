import '../../ideas/lee/q1.dart';

void main() {
  /*
 4. Maps, Functions & User Input
Create a Dart program that:
- Declares a `Map<String, int>` where keys are fruit names and values are their prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
   */

  Map<String, int> fruitPrice = {
    "Pineapple": 100,
    "Strawberry": 75,
    "Apple": 50,
    "Grapes": 40
  };
  print(getPrice("Strawberry", fruitPrice));
}

int getPrice(String fruitName, Map<String, int> myFruits) {
  return myFruits[fruitName] ?? -1;
}
