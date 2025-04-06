void main(){
  /*
Sum of List Elements
Write a function that takes a list of numbers and returns the sum of all elements.
Example:
sumList([1, 2, 3, 4, 5]) -> 15
   */
  print(sumOfList([1, 2, 3, 4, 5]));
}

int sumOfList(List<int> numbers){
  int sum = 0;
  for(var item in numbers){
    sum += item;
  }
  return sum;
}