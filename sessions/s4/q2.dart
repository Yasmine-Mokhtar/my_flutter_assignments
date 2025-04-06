void main(){
  /*
Variable Manipulation
Topic: Variables, Data types (int, double, String, bool)
Exercise: Create a Dart program that declares and initializes variables of different types
(int, double, String, bool). Calculate the sum of two numbers, concatenate two strings,
and print out the results.
   */
  int score = 99;
  double gpa = 3.9;
  String subject = "Flutter";
  String description = "Cross platform language";
  bool isOnline = true;

  print("The Score = ${score + 1}");
  print(subject + description); // Concatenation
  print("$subject $description"); // Interpolation 

}