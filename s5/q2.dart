void main(){

}

class BankAccount{
  String accountHolder;
  double balance;
  String accountNumber;
  BankAccount({required this.accountHolder, required this.balance, required this.accountNumber});

  double deposit(double amount){
    if(amount > 0){
      balance += amount;
      print("Depositing $amount to your account processing successfully");
      print("Your new balance is $balance");

    } else {
      print("You can not add a negative amount");
    }
    return balance;
  }

  double withdraw(double amount){
    if(amount >= balance){
      balance -= amount;
      print("Withdrawing $amount from your balance processing successfully");
      print("Your current balance is $balance");
    } else {
      print("Insufficient balance, your current balance is: $balance");
    }
    return balance;
  }
  void displayInfo(){
    print("Bank Account info:");
    print("======================");
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Balance: $balance");
  }
}

class SavingsAccount extends BankAccount{
  double interestRate;
  SavingsAccount({required this.interestRate, required super.accountHolder, required super.balance, required super.accountNumber});
  double applyInterest(double interest){
    balance = balance + (balance * interest) / 100;
    return balance;
  }
}

class Bank{
  List<BankAccount> accounts = [];

  void addAccount(BankAccount account){
    if(accounts.contains(account)){
      print("$account is already exist");
    } else {
      accounts.add(account);
      print("$account has been added to your list successfully");
    }
  }

  void findAccountNumber(String accountNumber){
    for(var item in accounts){
      if(accountNumber == item.accountNumber){
        print("This number is exist");
        print({item.displayInfo()});
      } else {
        print("There is no account holding this number");
      }
    }
  }

  void transfer(String fromAcc, String toAcc, double amount){
    BankAccount x;
    BankAccount y;
  }
}