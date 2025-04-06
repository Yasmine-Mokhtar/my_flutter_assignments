void main(){
  /*
Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
   */
  print(longestWord("Welcome, JasmineMokhtar here welcomeJasmineMokhtar"));
}
String longestWord(String sentence){
  String cleaned = sentence.trim().replaceAll(RegExp(r"[^\w\s]"), "");
  List<String> words = cleaned.split((RegExp(r"\s")));

  String longestWord = "";
  for(int i = 0; i < words.length; i++){
    if(longestWord.length < words[i].length){
      longestWord = words[i];
    }
  }
  return longestWord;
}
