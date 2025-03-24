void main(){
  /*
Question 15:
Task 1: Create a map representing a student with keys for name, age, and grade.
Add, update, and remove entries from the map, printing the map after each operation.
Task 2: Iterate over the map and print each key-value pair.
   */
  Map<String, dynamic> studentsData = {
    "Name": "Yasmin",
    "Age": 27,
    "Grade": "A"
  };
  print(studentsData);
  studentsData["Subject"] = "Science";
  print(studentsData);

  if(studentsData.containsKey("Age")){
    studentsData.remove("Age");
  }
  print(studentsData);

  if(studentsData.containsKey("Grade")){
    studentsData["Grade"] = "A+";
  }

  print(studentsData);

  studentsData.forEach((key, value){
    print("$key: $value");
  });

  studentsData.clear();
  print("The student data is: $studentsData");

}