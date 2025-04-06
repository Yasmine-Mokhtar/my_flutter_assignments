void main(){
  /*
Set Properties
Objective: Learn about sets by checking properties like size and membership.
Instructions:
- Create a set named uniqueNumbers with the values {10, 20, 30, 40}.
- Print the length of uniqueNumbers.
- Check if the number 20 is present in the set and print the result.
   */
  Set<int> uniqueNumbers = {10, 20, 30, 40};
  print("The Length of the set = ${uniqueNumbers.length}");
  bool isTargetExist = uniqueNumbers.contains(20);
  print("If Number 20 is Exist = $isTargetExist");
}