void main(){
  /*
Number Classification
Topic: Loops, Comparison operators
Exercise: Use a for loop to iterate through numbers 1 to 20. For each number,
print whether it's even or odd.
   */

  for(int i = 1; i <= 20; i++){
    if(i % 2 == 0){
      print("$i: is an Even number");
    } else {
      print("$i: is an Odd number");
    }
  }
}