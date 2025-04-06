import 'dart:io';
void main(){
  /*
Exercise 6: Map & User Input
Create an empty Dart map. Take input from the user for three pairs of keys (student names)
 and values (ages). Add these to the map, and then print the map.
   */
  Map<String, int> studentsAges = {};
  int studentAge;
  for(int i = 0; i < 3; i++){
    stdout.write("Enter user ${i + 1} name: ");
    String studentName = stdin.readLineSync()!;
    if(studentName.trim().isEmpty){
      print("Invalid input, the input can't be empty");
      return;
    }

    stdout.write("Enter user ${i + 1} age: ");
    String input = stdin.readLineSync()!;
    if(input.trim().isEmpty){
      print("Invalid input, the input can't be empty");
      return;
    }

    try{
      studentAge = int.parse(input);
    } catch(e){
      print("Invalid input, the input has to be a number");
      return;
    }

    studentsAges[studentName] = studentAge;
  }
  studentsAges.forEach((key, value){
    print("Name: $key, Age: $value");
  });

}