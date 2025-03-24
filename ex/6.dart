void main(){
  Car myCar = Car(brand: "Tesla", model: "Model S", year: 2022);
  myCar.displayInfo();
  ElectricCar myElectricCar = ElectricCar(brand: "Tesla", model: "Model 3", year: 2023, batteryCapacity: 75);
  myElectricCar.displayInfo();
}

class Car {
  String brand;
  String model;
  int year;
  Car({required this.brand, required this.model, required this.year});

  void displayInfo(){
    print("Car Info 🚘");
    print("-----------------");
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}

class ElectricCar extends Car {
  int batteryCapacity;
  ElectricCar({required this.batteryCapacity, required super.brand, required super.model, required super.year});

  @override
  void displayInfo(){
    super.displayInfo();
    print("Battery Capacity: $batteryCapacity");
  }
}