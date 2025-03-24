import 'dart:io';

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

  int start;
  int end;

  if (x > y) {
    start = y;
    end = x;
  } else {
    start = x;
    end = y;
  }

  List<int> primeNumbers = [];
  int counter;
  for (int i = start; i <= end; i++) {
    counter = 0;
    for(int j = start; j <= end; j++){
      if(i % j == 0){
        counter++;
      }
    }
    if(counter == 2){
      primeNumbers.add(i);
    }
  }

  print(primeNumbers);
}
