void main() {
  /*
Collection Operations
Topic: Lists, Sets, Maps
Exercise:
- Create a list of numbers, add a few elements, remove one, and display the final list.
- Create a set with some duplicate elements and print the set to show that
duplicates are removed.
- Create a map with keys as student names and values as grades. Print a student's
grade by accessing their name in the map.
   */
  List<int> numbers = [10, 20, 30, 40, 50];
  numbers.remove(20);
  print(numbers);

  Set<int> numbers2 = {10, 20, 30, 40, 50, 10, 20, 30, 40, 50};
  print(numbers2);

  Map<String, String> studentGrade = {
    "Ahmed": "A",
    "Noura": "B",
    "Mohamed": "C"
  };
  print(studentGrade["Ahmed"]);
}
