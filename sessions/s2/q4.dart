import 'dart:io';

void main(){
  /*
Exercise 4: Lists & User Input
Create an empty Dart List. Ask the user to enter three of their favorite fruits,
add these fruits to the list, and then print the complete list.
   */

  List<String> favFruits = [];
  String favFruit;
  for(int i = 0; i < 3; i++){
    stdout.write("Enter your favourite fruit: ");
    favFruit = stdin.readLineSync()!;
    if(favFruit.trim().isEmpty){
      print("Invalid input, can't be null");
      return;
    }

    favFruits.add(favFruit);
  }
  print("My favourite fruits is: ");
  print("======================");
  for(int i = 0; i < 3; i++){
    print("${i + 1} -${favFruits[i]}");
  }

}