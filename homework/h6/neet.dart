void main() {
  /*
  A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and
  removing all non-alphanumeric characters, it reads the same forward and backward.
  Alphanumeric characters include letters and numbers.
   */

  print(isPalindrome("A man, a plan, a canal: Panama"));
  print(isPalindrome("race a car"));
  print(isPalindrome(" "));
}

bool isPalindrome(String s) {
  s = s.trim().toLowerCase().replaceAll(RegExp(r"[^a-zA-Z0-9]"), "");
  return (s == s.split("").reversed.join());
}
