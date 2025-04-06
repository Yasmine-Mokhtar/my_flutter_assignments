void main(){
  /*
3. Lists, Loops & If Conditions
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
   */
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  for(var item in numbers){
    print(item % 2 == 0 ? "$item ➡️ Even ✅" : "$item ➡️ Odd 🔹");
  }

}