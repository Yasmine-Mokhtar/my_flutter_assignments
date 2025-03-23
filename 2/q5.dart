import 'dart:io';
void main(){
/*
Exercise 5: Set & Input Check
Create a Dart Set containing five numbers.
Ask the user to enter a number and then print whether this number exists
in the set or not (true or false).
   */
Set<int> numbers = {1, 2, 3, 4, 5};
int number;

while(true){
  stdout.write("Please, Enter a number: ");
  String? input = stdin.readLineSync()?.trim();
  if(input != null && int.tryParse(input) != null){
    number = int.parse(input);
    break;
  }
  print("Invalid Input, Please Enter a valid integer");
}

print(numbers.contains(number));
}