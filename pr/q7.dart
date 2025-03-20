void main(){
  /*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Programming Exercises
Example: reverseString('hello') -> 'olleh'
   */
  print(reverseString("Hello"));
  print(reverseString("Flutter"));
}
String reverseString(String word){
  String reversedWord = "";
  for(int i = word.length - 1; i >= 0; i--){
    reversedWord += word[i];
  }
  return reversedWord;
}