void main(){
  /*
  5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods.
Instantiate the class and use the dot operator to access and print its properties and methods.
   */
  Car myCar = Car(fuelLevel: 200, brand: "New Brand", model: "2025C", year: 2025);
  myCar.drive(100);
  myCar.displayInfo();

}

class Vehicle {
  String brand;
  String model;
  int year;
  Vehicle({required this.brand, required this.model, required this.year});

  void displayInfo(){
    print("Vehicle Info:");
    print("----------------------");
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }

  void start(){
    print("Starting the vehicle...");
  }

  void stop(){
    print("Stopping the vehicle...");
  }
}

class Car extends Vehicle{
  int fuelLevel;
  Car({required this.fuelLevel,required super.brand, required super.model, required super.year});

  void refuel(int amount){
    if(fuelLevel + amount >= 100){
      fuelLevel += amount;
      print("Refuelling your car...., your current fuel is $fuelLevel");
    } else {
      print("The max is 100, you can't add more, your current fuel is $fuelLevel");
    }
  }

  void drive(double distance){
    if(fuelLevel == 0){
      print("Can't Drive now, your current fuel is $fuelLevel");
    } else {
      print("Driving");
      if(distance <= 25){
        fuelLevel -= 5;
        print("your current fuel is $fuelLevel");
      } else if(distance <= 50){
        fuelLevel -= 10;
        print("your current fuel is $fuelLevel");
      } else if(distance <= 100){
        fuelLevel -= 20;
        print("your current fuel is $fuelLevel");
      }
    }
  }

  @override
  void displayInfo(){
    super.displayInfo();
    print("Fuel Level: $fuelLevel");
  }

}

