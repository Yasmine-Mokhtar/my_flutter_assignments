import 'dart:io';

void main(){
/*
Exercise 4: Lists & User Input
Create an empty Dart List. Ask the user to enter three of their favorite fruits,
add these fruits to the list, and then print the complete list.
*/
 List<String> fruits = [];
 int counter = 0;
 
 for(int i = 0; i < 3; i++){
   stdout.write("Please Enter your ${++counter} fruit: ");
   String? input = stdin.readLineSync()?.trim();
   input = (input == null || input.isEmpty) ? "Fruit" : input;
   fruits.add(input);
 }
print("Your Favorite Fruits are: $fruits");
}