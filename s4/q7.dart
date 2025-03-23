void main(){
  /*
  Student Grades Program
Topic: Functions, Parameters, Return statement
Exercise: Create a function called calculateGrade that takes a score (0 to 100)
as a parameter and returns a letter grade (e.g., A, B, C).
Then write a main function to call calculateGrade and print the grade for a given score.
   */
  print(calculateGrade(100));  // A
  print(calculateGrade(70));   // C
  print(calculateGrade(1000)); // Invalid
  print(calculateGrade(85));   // A
  print(calculateGrade(55));   // D
  print(calculateGrade(40));   // Failed
}


String calculateGrade(int score){

  if(score > 100 || score < 0) {
    return "Invalid";
  } else if (score >= 85){
    return "A";
  } else if(score >= 75){
    return "B";
  } else if (score >= 65){
    return "C";
  } else if(score >= 50){
    return "D";
  } else {
    return "Failed";
  }
}