void main() {
  /*
Simple Calculator
Topic: Arithmetic operators
Exercise: Build a program that takes two numbers as input and performs addition,
subtraction, multiplication, and division. Display each result to the console.
   */
  MyCalculator calculations = MyCalculator(x: 100, operation: "/", y: 0);
  calculations.calculate();
}

class MyCalculator {
  double x;
  double y;
  String operation;
  double? z;
  MyCalculator({required this.x, required this.operation, required this.y});

  double addition() {
    return x + y + (z ?? 0);
  }

  double subtraction() {
    return x - y - (z ?? 0);
  }

  double multiplication() {
    return x * y * (z ?? 1);
  }

  double division() {
    if (y != 0) {
      return x / y / (z ?? 1);
    } else {
      print("You can nit divide by zero");
      return double.nan;
    }
  }

  void calculate() {
    switch (operation) {
      case "+":
        print(addition());
        break;

      case "-":
        print(subtraction());
        break;

      case "*":
        print(multiplication());
        break;

      case "/":
        print(division());
        break;

      default:
        print(
            "Invalid operation, Please choose one of these operators [+, -, *, /]");
    }
  }
}
