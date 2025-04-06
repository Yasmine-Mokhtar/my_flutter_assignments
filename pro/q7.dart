void main(){
  /*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Programming Exercises
Example: reverseString('hello') -> 'olleh'
   */
  print(reverseString(word: "Hello"));
  print(reverseString2(word: "Flutter"));
}
// int i = 0; i < 10 ; i++
String reverseString ({required String word}){
  String reversedWord = "";
  for(int i = word.length - 1; i >= 0; i--){
   reversedWord += word[i];
  }
  return reversedWord;
}

String reverseString2({required String word}){
  return word.split("").reversed.join();
}



