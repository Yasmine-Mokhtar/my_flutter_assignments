void main() {
  /*
Custom Message Function
Topic: Optional and Named Parameters
Exercise: Write a function displayMessage that takes a required String message,
an optional String name, and a named int repeat with a default value of 1.
The function should print the message and the name repeat times. If name is not provided,
it should print the message alone.
   */
  displayMessage("Hello");
  displayMessage("Hello", name: "Jasmine", repeat: 5);
}

void displayMessage(String message, {String? name, int repeat = 1}) {
  for (int i = 1; i <= repeat; i++) {
    if (name == null) {
      print("$message, $i times");
    } else {
      print("$message, $name: $i times");
    }
  }
}
