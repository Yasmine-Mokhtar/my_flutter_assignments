void main(){
/*
Question 5
What is the difference between var and dynamic in Dart? Provide an example of each.
🔹Var "Type Safety ✅" => is a keyword, Dart recognises data type based on the initial value,
so once you assigned a specific type, you can't change it at all.

🔹Dynamic "Not a type safety ❌️" => is a weak data type, you can assign different data types,
but It's more flexible.
*/
  var name = "Yasmine";
  // name = 15; // It's gonna through an ERROR
  dynamic data = "Yasmine";
  data = 15;
  data = true;
}