void main(){
  /*
  Question 12:
Task: Create a class with a few properties and methods.
Instantiate the class and use the dot operator to access and print its properties and methods.
   */
  Human jasmine = Human(name: "Jasmine", hairColor: "Yellow", height: 170, weight: 65, skinColor: "White");
  jasmine.displayInfo();
}

class Human{
  String name;
  String hairColor;
  double height;
  double weight;
  String skinColor;

  Human({required this.name, required this.hairColor, required this.height, required this.weight, required this.skinColor});
  void greetings(){
    print("Hi, $name");
  }

  void displayInfo(){
    print("Human info: ");
    print("==================");
    print("Name: $name");
    print("Hair Color: $hairColor");
    print("Height: $height");
    print("Weight: $weight");
    print("Skin Color: $skinColor");
    greetings();
  }
}