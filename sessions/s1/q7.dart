import 'dart:io';

void main(){
  /*
Question 7:
Task: Write a program that accepts both integer and double values as `num` data types and
performs addition, printing the result.
   */
  num number = 0;
  stdout.write("Please, Enter a number here: ");
  String input = stdin.readLineSync()!;
  if(input.trim().isEmpty){
    print("Invalid input, the input can't be empty");
    return;
  }

  try{
    number = num.parse(input);
  } catch(e){
    print("Invalid input, the input has to be a number");
    return;
  }

  print("Addition: ${number + 10}");
}