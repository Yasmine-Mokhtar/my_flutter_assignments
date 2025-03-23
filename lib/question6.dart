import 'dart:io';
import 'dart:math';
void main(){
  /*
Question 6:
Task: Create a program that calculates the area of a circle given its radius as a `double`.
Print the result with two decimal places.
 */
double radius = 4;
double area = pow(radius, 2) * pi;
print("Area = ${area.toStringAsFixed(2)}");

}
