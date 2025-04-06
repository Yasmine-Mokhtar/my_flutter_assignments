void main() {
  /*
1. Basic Calculator:
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions.
Also, include optional parameters for different operations (e.g., addition of multiple numbers).
   */

  Calculate myCalculator = Calculate(x: 100, y: 20, operation: "+", z: 20);
  myCalculator.calculate();
  myCalculator.addition();
}

class Calculate {
  double x;
  double y;
  double? z;
  String operation;
  Calculate({required this.x, required this.y, required this.operation, this.z});

  double addition() => x + y + (z ?? 0);

  double subtraction() => x - y - (z ?? 0);

  double multiplication() => x * y * (z ?? 1);

  double division() {
    if (y == 0 || z == 0) {
      print("Invalid input, you can't divide by zero");
      return double.nan;
    } else {
      return( x / y / (z ?? 1));
    }
  }

  void calculate() {
    switch (operation) {
      case "+":
        print(addition());
        return;

      case "-":
        print(subtraction());
        return;

      case "*":
        print(multiplication());
        return;

      case "/":
        print(division().toStringAsFixed(2));
        return;

      default:
        print("Invalid operator");
    }
  }
}
