void main(){
  /*
Map Lookup
Objective: Practice accessing map values using keys.
Instructions:
- Create a map named person with the keys and values:
'name': 'Alice', 'age': '25', and 'city': 'New York'.
- Print the age of the person from the map.
- Update the city to 'Los Angeles' and print the updated map.
   */

  Map <String, String> person = {
    "Name": "Alice",
    "Age": "25",
    "City": "New York"
  };
  print("The Age of the person is ${person["Age"]}");

  // person ["City"] = "Los Angeles";
  person.update ("City", (value) => "Los Angeles");

  person.forEach((key, value){
    print("$key: $value");
  });
}