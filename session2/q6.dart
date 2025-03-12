import 'dart:io';

void main() {
  /*
If Condition with String Comparison
Objective: Use if to check string equality.
Instructions:
- Create a string variable password and set it to 'secret'.
- If password equals 'secret', print 'Access granted', otherwise print 'Access denied'.
   */
  String? password;
  stdout.write("Please Enter if the user's password is secret or Not: ");
  String input = stdin.readLineSync()!  ?? "".trim();
  password = input.toLowerCase();

  (password == "secret") ? print("Access granted 🔓") : print("Access Denied 🔐");

  /*
  if (password == "Secret") {
    print("Access granted 🔓");
  } else {
    print("Access Denied 🔐");
  }
   */
}