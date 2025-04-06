import 'dart:io';
import 'dart:math';

void main(){
  /*
Question 6:
Task: Create a program that calculates the area of a circle given its radius as a `double`.
Print the result with two decimal places.
   */
  stdout.write("Please, Enter the radius of a circle: ");
  double radius = double.parse(stdin.readLineSync()!);
  double area = (pi * pow(radius, 2));

  print("Area of the circle = ${area.toStringAsFixed(2)}");
}