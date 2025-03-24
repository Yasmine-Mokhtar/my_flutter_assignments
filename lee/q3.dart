void main(){
print(countDigitOccurrences(717, 7));
print(countDigitOccurrences(123456, 3));
print(countDigitOccurrences(88888, 8));
print(countDigitOccurrences(102030, 0));
}

int countDigitOccurrences(int x, int target){
  int counter = 0;
  int rightNum;
  while(x != 0){
    rightNum = x % 10;
    if(target == rightNum){
      counter++;
    }
    x ~/= 10;
  }

  return counter;
}