void main() {
  print(isPalindrome("Madam"));   // true
  print(isPalindrome("racecar")); // true
  print(isPalindrome("hello"));   // false
  print(isPalindrome("Dart"));    // false
}

bool isPalindrome(String word) {
  StringBuffer reversedWord = StringBuffer();
  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord.write(word[i]);

  }
  return (word.toLowerCase() == reversedWord.toString().toLowerCase());
}
