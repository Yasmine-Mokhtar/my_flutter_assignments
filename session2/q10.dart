import 'dart:io';

void main(){
  /*
Null Safety with a Default Value
Objective: Practice using nullable variables with default values.
Instructions:
- Create a nullable integer variable score but do not assign it a value.
- Print score if it has a value, otherwise print 'No score'.
- Try assigning a value to score and run the code again to see the change.
   */
  int? score;
  while(true){
    stdout.write("Please, Enter a score here: or type 'Exit' To quit");
    String input = stdin.readLineSync() ?? "".trim();

    if(input.toLowerCase() == "exit"){
      print("Exiting the program, GoodBye! 👋");
      break;
    }

    score = int.tryParse(input);

    if(score != null){
      print("The Score is ⛹️‍♀️$score");
      break;

    } else {
      print("No Score 🙅‍♀️");
    }
  }

}