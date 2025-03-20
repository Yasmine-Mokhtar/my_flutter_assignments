void main(){
  /*
2. Arithmetic Operators, Conditional Statements & Functions
Write a function `calculateBonus(int salary, int yearsWorked)`
that calculates a bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result.
   */
  print(calculateBonus(1000, 5));
  print(calculateBonus(1000, 2));
  print(calculateBonus(1000, -5));
}
int calculateBonus(int salary, int yearsWorked) {
  if(salary < 0 || yearsWorked < 0){
    print("Invalid Input.\nYour Salary and years have to be Positive values");
    return 0;
  }

  int bonus = 0;
  if(yearsWorked >= 5){
    bonus = salary * 10 ~/ 100;
  } else {
    bonus = salary * 5 ~/ 100;
  }
  return bonus;
}