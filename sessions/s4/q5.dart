import "dart:io";

void main() {
  /*
Conditional Logic for User Roles
Topic: Conditional statements, If-Else, Logical operators
Exercise: Write a program that checks the role of a user
(e.g., admin, user, guest).
Print 'Welcome Admin' if the role is admin,
'Welcome User' if it's user,
and 'Welcome Guest' otherwise.
   */
  print("Please, Enter your role here: [admin, user, guest]?");
  stdout.write("Your role is: ");
  String userRole = stdin.readLineSync()!.trim().toLowerCase();
  if (userRole.isEmpty) {
    print("Invalid input, the input can't be null value");
    return;
  }

  if (userRole == "admin") {
    print("Welcome Admin 👑");
  } else if (userRole == "user") {
    print("Welcome User 🙋‍♀️");
  } else {
    print("Welcome Guest 👋");
  }
}
