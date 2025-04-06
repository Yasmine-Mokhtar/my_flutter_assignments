import "dart:io";

void main() {
  /*
Exercise 7: Comparison Operators & Input
Write a Dart program that takes two numbers from the user.
Print true or false for each of these conditions:
- First number is greater than second number
- First number is equal to second number
- Second number is greater than or equal to first number
   */
  int number1;
  int number2;
  stdout.write("Enter the first number: ");
  String input1 = stdin.readLineSync()!;
  if (input1.trim().isEmpty) {
    print("Invalid input, the input can't be empty value");
    return;
  }

  try {
    number1 = int.parse(input1);
  } catch(e){
    print("Invalid input, the input have to be a number");
    return;
  }

  stdout.write("Enter the second number: ");
  String input2 = stdin.readLineSync()!;
  if (input2.trim().isEmpty) {
    print("Invalid input, the input can't be empty value");
    return;
  }

  try {
    number2 = int.parse(input2);
  } catch(e){
    print("Invalid input, the input have to be a number");
    return;
  }

  bool firstNumberGreater = (number1 > number2);
  bool numbersAreEqual = (number1 == number2);
  bool secondNumberGreaterOrEqual = (number2 >= number1);

  print("First number > Second number = $firstNumberGreater");
  print("First number == Second number = $numbersAreEqual");
  print("Second number >= First number = $secondNumberGreaterOrEqual");

}
