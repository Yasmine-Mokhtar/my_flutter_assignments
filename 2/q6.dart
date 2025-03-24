import 'dart:io';

void main(){
  /*
 Exercise 6: Map & User Input
Create an empty Dart map. Take input from the user for three pairs of keys (student names)
and values (ages). Add these to the map, and then print the map.
   */
  Map<String, int> studentData = {};

  for(int i = 0; i < 3; i++){
    stdout.write("Please, Enter your name: ");
    String name = stdin.readLineSync()!;
    stdout.write("Please, Enter your Age: ");
    int age = int.parse(stdin.readLineSync()!);
    studentData[name] = age;
  }
  studentData.forEach((key, value){
    print("$key: $value");
  });

  //print(studentData);
}