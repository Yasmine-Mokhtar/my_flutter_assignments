void main(){
/*
Question 4:
Task: Create a Dart program that concatenates two strings and prints the result.
Then, extract and print a substring from the result.
 */
String subject = "Flutter";
String description = " ➡️ a cross platform programming language";

print(subject + description);
// Concatenation

print("$subject $description");
//Interpolation

print(description.substring(12, 41));
}
