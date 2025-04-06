import "dart:io";
void main(){
  /*
 5. Class Creation and Dot Operator Usage:
Create a class with a few properties and methods.
Instantiate the class and use the dot operator to access and print its properties and methods.
   */
  BankAccount myAccount = BankAccount(userName: "Jasmine", balance: 2000000);
  myAccount.start();
}

class BankAccount {
  String userName;
  double balance;
  BankAccount({required this.userName, required this.balance});

  void deposit(){
    double amount;
    stdout.write("Please Enter the amount you want to deposit: ");
    String input = stdin.readLineSync()!;
    if(input.trim().isEmpty){
      print("Invalid input, the input can't be null");
      return;
    }

    try{
      amount = double.parse(input);
    } catch(e){
      print("Invalid input, the input has to be a number");
      return;
    }

    if(amount <= 0){
      print("Invalid input, the input has to be more than zero");
      return;
    } else {
      balance += amount;
      print("$amount has been added to your current balance successfully");
      print("Your current balance is: ${balance.toStringAsFixed(2)}");
    }

  }

  void withdraw(){
    double amount;
    stdout.write("Please Enter the amount you want to withdraw: ");
    String input = stdin.readLineSync()!;
    if(input.trim().isEmpty){
      print("Invalid input, the input can't be null");
      return;
    }

    try{
      amount = double.parse(input);
    } catch(e){
      print("Invalid input, the input has to be a number");
      return;
    }

    if(amount > balance){
      print("Invalid input, the input has to be more than the current balance");
      return;
    } else {
      balance -= amount;
      print("$amount has been withdrawn from your current balance successfully");
      print("Your current balance is: ${balance.toStringAsFixed(2)}");
    }

  }

  void viewDetails(){
    print("Account Info: ");
    print("===================");
    print("Name: $userName");
    print("Balance: ${balance.toStringAsFixed(2)}");
  }

  void greeting() {
    print("Welcome back, $userName! 👋💳");
  }

  void start(){
    String repeat = "no";
    int options;
    do{
      greeting();
      print("Please select one of the options: ");
      print("1. deposit");
      print("2. withdraw");
      print("3. view Details");
      print("4. Exit");
      stdout.write("Option: ");

      String input = stdin.readLineSync()!;
      if(input.trim().isEmpty){
        print("Invalid input, the input can't be null");
        return;
      }

      try{
        options = int.parse(input);
      } catch(e){
        print("Invalid input, the input has to be a number");
        return;
      }

      switch(options){
        case 1:
          deposit();
          break;

        case 2:
          withdraw();
          break;

        case 3:
          viewDetails();
          break;

        case 4:
          print("Bye 👋 $userName");
          return;

        default:
          print("Invalid input: you have to choose from 1 to 4");
      }

      stdout.write("Do you want to do another operation: [yes, no]: ");
      repeat = stdin.readLineSync()!;
      if(repeat.trim().isEmpty){
        print("Invalid input, the input can't be null");
        return;
      }


    } while (repeat.toLowerCase() == "yes");
    print("Bye 👋 $userName");
  }

}