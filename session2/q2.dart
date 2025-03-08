void main(){
  /*
Adding and Removing Elements in a List
Objective: Practice adding and removing elements in a list.
Instructions:
- Create a list named colors with the values ['red', 'green', 'blue'].
- Add 'yellow' to the list and print the updated list.
- Remove 'green' from the list and print the updated list.
   */
  List<String> colors = ["red", "green", "blue"];
  colors.add("yellow");
  print("Your favourite colors are 🎨 $colors");
  colors.remove("green");
  print("Your updated favourite colors are 🎨 $colors");
}