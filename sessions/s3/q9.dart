void main(){
  /*
Exercise 10: Define a Class and Create an Object
Objective: Introduce classes and objects.
Task: Define a class Car with two properties: make and model.
Create an instance of the Car class and print out its properties.
   */
  Car myCar = Car(name: "Jeep", model: "2050 PRO");
 myCar.displayInfo();
}

class Car {
  String name;
  String model;
  Car({required this.name, required this.model});

  void displayInfo(){
    print("Car info:");
    print("=============");
    print("Name: $name");
    print("Model: $model");
  }
}