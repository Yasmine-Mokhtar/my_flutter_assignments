import "dart:io";
void main(){
  /*
Exercise 3: String Manipulation
Write a Dart program that takes a sentence from the user, then prints the length of this sentence,
the sentence in uppercase, and the sentence in lowercase.
   */
  stdout.write("Enter a sentence here: ");
  String sentence = stdin.readLineSync()!;

  if(sentence.trim().isEmpty){
    print("Invalid input, can't be null");
    return;
  }

  print("The length of the sentence = ${sentence.length}");
  print("The uppercase of the sentence = ${sentence.toUpperCase()}");
  print("The lowercase of the sentence = ${sentence.toLowerCase()}");
}