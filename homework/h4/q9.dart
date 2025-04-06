import "rectangle_class.dart";
void main(){
  /*
9. OOP, Constructors & Getters
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
   */
  Rectangle x = Rectangle(4, 6);
  x.height = 10;
  print(x.area);
}

