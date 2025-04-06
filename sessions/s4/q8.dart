void main(){
  /*
Inventory Management System
Topic: Classes, Objects, Encapsulation
Exercise: Define a class Product with properties like name, price, and quantity.
Include methods to update the quantity and calculate the total price for a given quantity.
In the main function, create a Product object, update the quantity, and print the total price.
   */
  Product laptop = Product(name: "Mac Book", price: 1200, quantity: 5);
  print(laptop.calculateTotalPrice(6));
}

class Product {
  String name;
  double price;
  int quantity;
  Product({required this.name, required this.price, required this.quantity});

  int updateQuantity(int updatedQuantity){
    return quantity = updatedQuantity;
  }

  double calculateTotalPrice(int givenQuantity){
    if(givenQuantity <= quantity){
      return price * givenQuantity;
    } else {
      print("You just have $quantity $name now, and you ordered $givenQuantity $name");
      return double.nan;
    }

  }

}