void main(){
/*
Question 11
How do you concatenate strings in Dart? Write an example using two variables: firstName and lastName.
🔹String Concatenation is linking Strings together using "+", We have to add spaces Manually if needed.
🔹Concatenation is linking Strings together using `$variable` or `${expression}`,
  That's why It's more readable and Efficient, and No need to add spaces.
*/
  String firstName = "Yasmine";
  String lastName = "Mokhtar";
  print ("$firstName $lastName"); // interpolation
  print (firstName + " " + lastName); // Concatenation
}