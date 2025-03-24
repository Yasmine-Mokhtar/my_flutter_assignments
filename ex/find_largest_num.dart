void main(){
  print(findLargest([3, 7, 2, 8, 5]));  // Output: 8
  print(findLargest([-10, -5, -20, -1])); // Output: -1
  print(findLargest([100, 50, 200, 150])); // Output: 200
}

int findLargest(List numbers){
  int largestNum = numbers[0];
  for(int i = 1; i < numbers.length; i++){
    if(numbers[i] > largestNum){
      largestNum = numbers[i];
    }
  }
  return largestNum;
}