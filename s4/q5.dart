import 'dart:io';

void main() {
  /*
  Conditional Logic for User Roles
Topic: Conditional statements, If-Else, Logical operators
Exercise: Write a program that checks the role of a user (e.g., admin, user, guest).
Print 'Welcome Admin' if the role is admin,
'Welcome User' if it's user,
and 'Welcome Guest' otherwise.
   */
  stdout.write("Please, Select your Role: admin, user, guest ");
  String myRole = stdin.readLineSync()!.trim().toUpperCase();

  if (myRole == "ADMIN") {
    print("Welcome Admin");
  } else if (myRole == "USER") {
    print("Welcome user");
  } else {
    print("Welcome Guest");
  }
}
