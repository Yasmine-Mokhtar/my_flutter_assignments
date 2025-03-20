void main(){
  /*
  Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
   */
  print(longestWord("Hi, my name is Yasmine"));
}


String longestWord(String sentence) {
  List<String> words = sentence.split(' ');
  String longestWord = "";

  for (var item in words) {
    item = item.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    if (item.length > longestWord.length) {
      longestWord = item;
    }
  }
  return longestWord;
}