void main(){
  /*
Student Grades Program
Topic: Functions, Parameters, Return statement
Exercise: Create a function called calculateGrade that takes a score (0 to 100)
as a parameter and returns a letter grade (e.g., A, B, C).
Then write a main function to call calculateGrade and print the grade for a given score.
   */
  print(calculateGrade(score: 80));
}

String calculateGrade({required int score}){
  if(score > 100 || score < 0){
    return "Invalid score, the score has to be between 1 to 100";
  } else if (score >= 85){
    return "A";
  } else if (score >= 75){
    return "B";
  } else if (score >= 67){
    return "C";
  } else if(score >= 50){
    return "D";
  } else {
    return "F";
  }
}