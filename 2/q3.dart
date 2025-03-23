import 'dart:io';

void main(){
  /*
Exercise 3: String Manipulation
Write a Dart program that takes a sentence from the user,
then prints the length of this sentence, the sentence in uppercase, and the sentence in lowercase.
   */
  stdout.write("Please Enter a sentence here: ");
  String? input = stdin.readLineSync()?.trim();
  input = (input == null || input.isEmpty) ? "Default Sentence": input;

  print(input.length);
  print(input.toUpperCase());
  print(input.toLowerCase());
}