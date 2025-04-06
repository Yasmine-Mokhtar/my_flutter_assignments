void main(){
  /*
  Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
   */
  print(longestWord("Hi, my name is Yasmine"));

  print(longestWord("Hi, my name is Yasmine Sobiaaaaaaaaa"));
}


String longestWord (String sentence){
  String theLongestWord = "";
  List<String>words = [];
  words = sentence.split("");
  for(var item in words){
    if(item.length > theLongestWord.length){
      theLongestWord = item;
    }
  }
return theLongestWord;
}