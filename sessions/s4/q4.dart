void main(){
  /*
Collection Operations
Topic: Lists, Sets, Maps
Exercise:
- Create a list of numbers, add a few elements, remove one, and display the final list.
- Create a set with some duplicate elements and print the set to show that duplicates are removed.
- Create a map with keys as student names and values as grades. Print a student's grade
by accessing their name in the map.
   */

  List<int> numbers = [10, 20, 30, 40, 50];
  numbers.addAll([60, 70, 80, 90, 100, 110]);
  numbers.remove(110);
  print(numbers);

  Set<String> fruits = {"Pineapple 🍍", "Strawberry 🍓", "Grapes 🍇", "Pineapple 🍍", "Strawberry 🍓", "Grapes 🍇"};
  print(fruits);

  Map<String, double> studentGrade = {
    "Jasmine" : 100,
    "Mohamed" : 90,
    "Ahmed" : 20
  };
  print(studentGrade["Mohamed"]);
  studentGrade.forEach((key, value){
    print("$key ➡️ $value");
  });

}