void main(){
  /*
Reverse a String
Write a function that takes a string as input and returns the string reversed.
Example: reverseString('hello') -> 'olleh'
   */
  print(reversedWord("Hello"));
  print(reversedWord2("Hello"));
}

String reversedWord (String word){
  String reversed = "";
  for(int i = word.length - 1; i >= 0; i--){
    reversed += word[i];
  }
  return reversed;
}



String reversedWord2(String word){
  return word.split("").reversed.join();
}
