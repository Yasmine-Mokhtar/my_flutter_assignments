void main(){
  /*
  Exercise 8: Optional Parameters
Objective: Practice using optional parameters in functions.
Task: Write a function greetUser that takes an optional name parameter.
If the name is provided, greet the user with their name; if not, greet with 'Guest'.
   */
  greetUser(name: "Yasmine");
  greetUser();

}
void greetUser({String name = "Guest"}){
  print("Welcome $name");
}
