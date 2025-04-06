void main(){
  /*
 Number Classification
Topic: Loops, Comparison operators
Exercise: Use a for loop to iterate through numbers 1 to 20. For each number,
 print whether it's even or odd.
   */
  print("🔢 Number Classification from 1 to 20:");
  for(int i = 1; i <= 20; i++){
    (i % 2 == 0) ? print("$i ➡️ Even") : print("$i ➡️ Odd");
  }
}