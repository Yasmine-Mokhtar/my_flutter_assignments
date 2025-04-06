void main(){
  /*
3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
   */

  List<int> numbers = [12, 21, 6, 93, 76];
  for(var item in numbers){
    (item % 2 == 0) ? print("Even: $item"): print("Odd: $item");
  }
}