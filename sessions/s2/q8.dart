import "dart:io";
void main(){
  /*
Exercise 8: Conditional Statements with Input
Write a Dart program that asks the user to enter their age.
Using conditional statements (if, else if, else), print if the user is a child (less than 13),
a teenager (13 to 19),
or an adult (20 or older).
   */
  int age;
  stdout.write("Enter your age: ");
  String input1 = stdin.readLineSync()!;
  if (input1.trim().isEmpty) {
    print("Invalid input, the input can't be empty value");
    return;
  }

  try {
    age = int.parse(input1);
  } catch(e){
    print("Invalid input, the input have to be a number");
    return;
  }

  if(age <= 0){
    print("Invalid input, your age can't be zero or negative value");
  } else if(age < 13){
    print("a child 👶");
  } else if(age >= 13 && age <= 19){
    print("Teenager 👨‍👩‍💻");
  } else {
    print("Adult 👨‍🦳👩‍🦳");
  }
}