void main(){
  /*
  Exercise 10: Define a Class and Create an Object
Objective: Introduce classes and objects.
Task: Define a class Car with two properties: make and model.
Create an instance of the Car class and print out its properties.
   */
  Car myCar = Car(make: "Jeep", model: "2025");
  myCar.displayInfo();
  Car myCar2 = Car();
  myCar2.displayInfo();
}

class Car {
  String make, model;
  Car({this.make = "Maker", this.model = "Model"});

  void displayInfo(){
    print("Car Info: ");
    print("================");
    print("Maker: $make");
    print("Model: $model");
  }
}