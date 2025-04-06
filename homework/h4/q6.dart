void main(){
  /*
6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:
 - `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.
   */
  Person x = Person("Jasmine",27);
  x.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;
  Person(this.name, this.age, {this.isStudent = false});
  void displayInfo(){
    print("Student Info:");
    print("=================");
    print("Name: $name");
    print("Age: $age");
    print("If $name is a student = $isStudent");
  }
}