void main(){
  /*
Adding and Removing Elements in a List
Objective: Practice adding and removing elements in a list.
Instructions:
- Create a list named colors with the values ['red', 'green', 'blue'].
- Add 'yellow' to the list and print the updated list.
- Remove 'green' from the list and print the updated list.
   */
  List<String> colors = ["Red", "Green", "Blue"];
  colors.add("Yellow");
  colors.remove("Green");

  print("Your List: ");
  for(int i = 0; i < colors.length; i++){
    print("${i + 1}- ${colors[i]}");
  }
}