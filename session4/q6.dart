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
  Person nour = Person(name: "Nour");
  nour.displayInfo();

  Person noura = Person(name: "Noura", age: 27);
  noura.displayInfo();

  Person nouria = Person(name: "Nouria", age: -6);
  nouria.displayInfo();
}
class Person{
  String name;
  int? age;
  bool isStudent = false;
  Person({this.name = "Name", this.age});

  bool isValidAge(){
    if(age != null && age! <= 0){
      print("Invalid Age, It has to be positive");
      return false;
    } else {
      return true;
    }
  }

  void displayInfo(){
    print("My info:");
    print("=================");
    print("My name is $name");
    if(isValidAge()){
      print("My age is $age");
    } else {
      print("Invalid age or not provided");
    }

    print("If I'm a student = $isStudent");
  }
}