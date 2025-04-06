import 'rectangle.dart';
void main(){
  /*
9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
   */
  Rectangle square = Rectangle(width: 20, height: 20);
  Rectangle flexible = Rectangle(width: 5, height: 4);
  print(square.area);
  print(flexible.area);
}

