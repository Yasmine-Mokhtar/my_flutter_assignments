void main() {
  /*
 6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade.
Add, update, and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair.
   */

  Map<String, String> studentDetails = {
    "Name": "Yasmine",
    "Age": "27",
    "Grade": "B+",
    "Email": "yasmine.mokhtar@gmail.com"
  };
  print(studentDetails);

  studentDetails["Grade"] = "A"; // updating Single Entry

  studentDetails.update("Grade", (value) => "A+");

  studentDetails.addAll({
    "Location": "Alexandria",
    "Contact Info": "01111765114",
    "Subject": "Science"
  });

  studentDetails.remove("Age");
  print(studentDetails);

  studentDetails.forEach((key, value) {
    print("$key : $value");
  });
}
