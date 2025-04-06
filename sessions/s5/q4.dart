import "dart:math";

void main() {
  /*
Find Prime Numbers in a Range
Write a function that takes two numbers (start, end) and returns a list of all
prime numbers between them.
Ensure that the function correctly identifies prime numbers and handles edge cases where
start is greater than end.
   */
  print(findPrimeNumbers(1, 20));
}

List <int> findPrimeNumbers(int x, int y){
  List<int> primeNumbers = [];
  int start = x > y ? y : x;
  int end = x > y ? x : y;

  if(start <= 1){
    start = 2;
  }

  bool isPrime;
  for(int i = start; i <= end; i++){
    isPrime = true;
    for(int j = 2; j <= sqrt(i); j++){
      if(i % j == 0){
        isPrime = false;
        break;
      }
    }
    if(isPrime){
      primeNumbers.add(i);
    }
  }

  return primeNumbers;
}