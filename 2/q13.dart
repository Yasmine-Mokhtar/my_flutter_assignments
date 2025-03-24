void main(){
/*
Question 13:
Task 1: Declare a list of integers and add, remove, and update elements.
Print the list after each operation.
Task 2: Create a list of strings and sort it in alphabetical order, then print the sorted list.
*/
List<int> numbers =[10, 20, 30, 40];
print("Initial values of numbers are: $numbers");

numbers.add(50);
print("After adding an element, The updated list is: $numbers");

numbers.remove(40);
print("After Removing an element, The updated list is: $numbers");

numbers[1] = 15;
print("The List after changing an element is: $numbers");

List<String> names = ["Yasmin", "Mokhtar", "Nour", "Ahmed", "Ossama"];
print("Our initial List is: $names");
names.sort();
print("After Sorting the list, The updated list is: $names");
}