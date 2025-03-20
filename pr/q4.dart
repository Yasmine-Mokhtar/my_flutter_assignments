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

void primeInRange() {
  stdout.write("Please, Enter the start number: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Please, Enter the end number: ");
  int y = int.parse(stdin.readLineSync()!);

  int start = (x > y) ? y : x;
  int end = (x < y) ? y : x;

  List<int> primeNumbers = [];
  for (int i = start; i <= end; i++) {
    bool isPrime = true;
    for(int j = 2; j <= sqrt(i); j++){
      if(i % j == 0){
        isPrime = false;
        break;
      }
    }
    if(isPrime && i > 1){
      primeNumbers.add(i);
    }
  }

  print(primeNumbers);
}
