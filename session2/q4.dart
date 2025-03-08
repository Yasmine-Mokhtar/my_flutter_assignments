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
  Map<String, String> person ={
    "name": "Alice",
    "age": "25",
    "city": "New York"
  };
  print("The age of the person ➡️ ${person["age"]}");
  person["city"] = "Los Angeles";
  print("The updated City is ➡️ ${person["city"]} 🌆");
}