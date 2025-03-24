void main(){
  /*
  Question 4:
Task: Create a Dart program that concatenates two strings and prints the result.
Then, extract and print a substring from the result.
   */
  String text1 = "Yasmine";
  String text2 = "Mokhtar";
  String combinedString = "$text1 $text2";
  print(combinedString.substring(0, 2));
  String result = combinedString.substring(3);
  print(result);
}