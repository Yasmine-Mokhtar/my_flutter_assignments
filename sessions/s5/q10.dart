void main() {
  /*
Employee Payroll System
Implement an employee payroll system.
Create a base Employee class with properties: name, id, and salary.
Implement a method calculateSalary() in the base class.
Create two subclasses:
- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
salary based on hours worked.
   */
  FullTimeEmployee x = FullTimeEmployee(
      bonus: 100, name: "Jasmine", id: "498u9485ID", salary: 1000);
  print(x.calculateSalary());

  PartTimeEmployee y = PartTimeEmployee(
      hoursWorked: 100, hourlyRate: 10, name: "Jessy", id: "40580985ID");
  print(y.calculateSalary());
}

class Employee {
  final String name, id;
  final double salary;
  Employee({required this.name, required this.id, this.salary = 0});
  double calculateSalary(){
    return salary * 12;
  }
}

class FullTimeEmployee extends Employee {
  final double bonus;
  FullTimeEmployee(
      {required this.bonus,
      required super.name,
      required super.id,
      required super.salary});

  @override
  double calculateSalary() {
    return super.calculateSalary() + bonus;
  }
}

class PartTimeEmployee extends Employee {
  final double hoursWorked, hourlyRate;
  PartTimeEmployee(
      {required this.hoursWorked,
      required this.hourlyRate,
      required super.name,
      required super.id});

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}
