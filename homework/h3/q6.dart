void main(){
  /*
6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade.
Add, update, and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.
   */
  Map<String, String> studentDetails = {
    "Name" : "Jasmine",
    "Age" : "27",
    "Grade" : "A"
  };
  studentDetails.addAll({"contact Number" : "01111765114", "Email" : "yasmine.ali.mokhtar@gmail.com", "Grade" : "A+"});
  print(studentDetails);
  studentDetails.remove("Age");
  print(studentDetails);

  studentDetails.forEach((key, value){
    print("$key ➡️ $value");
  });
}