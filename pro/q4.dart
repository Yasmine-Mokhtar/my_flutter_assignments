import 'dart:io';
import 'dart:math';

void main() {
  /*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all prime numbers
between them.
Ensure that the function correctly identifies prime numbers and handles edge cases
where start is greater than end.
   */
  primeInRange();
}

bool isPrimeNumber(int x) {
  for (int i = 2; i <= sqrt(x); i++) {
    if (x % i == 0) {
      return false;
    }
  }
  return true;
}

List primeInRange() {
  stdout.write("Enter a number: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a number: ");
  int y = int.parse(stdin.readLineSync()!);

  int start = x > y ? y : x;
  int end = x > y ? x : y;

  List<int> primeNumbers = [];
  for (int i = start; i <= end; i++) {
    if (isPrimeNumber(i) && i != 1) {
      primeNumbers.add(i);
    }
  }
  return primeNumbers;
}
