void main(){
  print(reversedString("Flutter"));
  print(reversedString("word"));
  String word = "Flutter";
  String reversedWord = word.split("").reversed.join("");
  print(reversedWord);

}
String  reversedString (String word){
  StringBuffer reversedWord = StringBuffer();
  for(int i = word.length-1; i >= 0; i--){
    reversedWord.write(word[i]);
  }
  return reversedWord.toString();
}