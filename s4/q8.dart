void main(){
  /*
  Inventory Management System
Topic: Classes, Objects, Encapsulation
Exercise: Define a class Product with properties like name, price, and quantity.
Include methods to update the quantity and calculate the total price for a given quantity.
In the main function, create a Product object, update the quantity, and print the total price.
   */
Product x = Product(name: "Laptop", price: 1200, quantity: 12);
print(x.addStockAndCalculateTotal(100));
}

class Product{
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double addStockAndCalculateTotal(int newQuantity){
    double totalPrice;
    quantity += newQuantity;
    totalPrice = quantity * price;
    return totalPrice;
  }


}