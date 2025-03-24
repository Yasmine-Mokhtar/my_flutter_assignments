void main(){
  /*
  Exercise 10: Define a Class and Create an Object
Objective: Introduce classes and objects.
Task: Define a class Car with two properties: make and model.
Create an instance of the Car class and print out its properties.
   */
  Car myCar = Car(make: "Toyota", model: "VC2025");
  Car myBrotherCar = Car();
  myCar.printInfo();
  myBrotherCar.printInfo();
}
class Car {
  String make;
  String model;
  Car({this.make = "Factory", this.model = "Model"});
  void printInfo(){
    print("Car Info: ");
    print("================");
    print("Maker: $make");
    print("Model: $model");
  }
}