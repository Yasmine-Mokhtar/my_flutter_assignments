void main(){
  /*
If Condition with String Comparison
Objective: Use if to check string equality.
Instructions:
- Create a string variable password and set it to 'secret'.
- If password equals 'Secret', print 'Access granted', otherwise print 'Access denied'.
   */
  String password = "secret";
  if(password.toLowerCase() == "secret"){
    print ("Access granted");
  } else {
    print ("Access denied");
  }
}