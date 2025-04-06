import 'dart:io';

void main(){
  /*
5. Sets, Functions & Return Statement
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
   */
  print(uniqueNames(["Yasmine", "Ahmed", "Mona", "Yasmine", "Ahmed", "Mona"]));

}
Set uniqueNames(List<String> names){
  return names.toSet();
}