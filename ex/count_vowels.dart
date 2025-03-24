void main(){
  print(countVowels("Flutter"));   // Output: 2
  print(countVowels("Dart"));      // Output: 1
  print(countVowels("HellO"));     // Output: 2
  print(countVowels("Sky"));       // Output: 0
}

int countVowels(String word){
  word = word.toLowerCase();
  int count = 0;
  for(int i = 0; i < word.length; i++){

    if(word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u"){
      count++;
    }
  }
  return count;
}