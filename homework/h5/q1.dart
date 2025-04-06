import "dart:io";

void main() {
  PersonalLoan myPersonalLoan =
      PersonalLoan(borrowerName: "Jame Smith", loanAmount: 2000);
  HomeLoan myHomeLoan = HomeLoan(borrowerName: "Jane mike", loanAmount: 50000);
  CarLoan myCarLoan = CarLoan(borrowerName: "Nicola James", loanAmount: 1000);

  LoanProcessingSystem myLoans = LoanProcessingSystem();
  myLoans.applyLoan(myPersonalLoan);
  myLoans.applyLoan(myHomeLoan);
  myLoans.applyLoan(myCarLoan);
  myLoans.applyLoan(myCarLoan);
  print("Total monthly installment over 12 months: ${myLoans.calculateInstallments(12).toStringAsFixed(2)}");
}

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;
  Loan(
      {required this.borrowerName,
      required this.loanAmount,
      required this.interestRate});

  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate)) / months;
  }
}

class PersonalLoan extends Loan {
  PersonalLoan({required super.borrowerName, required super.loanAmount})
      : super(interestRate: 0.10);
}

class HomeLoan extends Loan {
  HomeLoan({required super.borrowerName, required super.loanAmount})
      : super(interestRate: (loanAmount > 500000) ? 0.095 : 0.08);
}

class CarLoan extends Loan {
  CarLoan({required super.borrowerName, required super.loanAmount})
      : super(interestRate: (loanAmount > 50000) ? 0.09 : 0.07);
}

class LoanProcessingSystem {
  List<Loan> myLoans = [];

  void applyLoan(Loan newLoan) {
    bool isExist = false;
    for (var loan in myLoans) {
      if (loan.borrowerName == newLoan.borrowerName) {
        isExist = true;
      }
    }

    String response = "no";
    if (!isExist) {
      myLoans.add(newLoan);
      print(
          "The loan for: ${newLoan.borrowerName}, with amount: ${newLoan.loanAmount}, and interest Rate: ${newLoan.interestRate} has been added successfully");
    } else {
      print("This user: ${newLoan.borrowerName} had already a loan previously");
      print("Do you want to add the loan [yes, no]: ");
      response = stdin.readLineSync()!;
    }

    if (response.toLowerCase() == "yes") {
      myLoans.add(newLoan);
      print(
          "The loan for: ${newLoan.borrowerName}, with amount: ${newLoan.loanAmount}, and interest Rate: ${newLoan.interestRate} has been added successfully");
    }
  }

  double calculateInstallments(int months) {
    double sumOfAllLoans = 0;
    for (var loan in myLoans) {
      sumOfAllLoans += loan.calculateMonthlyInstallment(months);
    }
    return sumOfAllLoans;
  }
}
