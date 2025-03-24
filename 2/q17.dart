import 'dart:io';

void main(){
/*
Question 17:
Task: Create a program that asks the user to input a number
and checks if it's positive, negative, or zero using `if-else` statements.
*/
stdout.write("Please, Enter a number: ");
int num = int.parse(stdin.readLineSync()!);
if(num > 0){
  print("$num is a Positive Number 📉");
} else if(num < 0){
  print("$num is a negative Number 📈");
} else {
  print("$num 0️⃣");
}

}