void main(){
  /*
Count Words in a Sentence
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces.
   */
  print(countWords("Hi, my name is Jasmine"));
  print(countWords("   This   is   spaced    weirdly   "));
}
int countWords(String sentence){
  List<String> words = sentence.trim().split(RegExp(r"\s"));
  return words.length;
}