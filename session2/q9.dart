void main(){
  /*
  Switch Case with Seasons
Objective: Use switch for multiple cases.
Instructions:
- Create an integer variable month with a value between 1 and 12.
- Use a switch statement to print the season based on the month.
   */
  int month = 12;
  switch(month){
    case 3:
    case 4:
    case 5:
      print("Spring 🌷");
      break;

    case 6:
    case 7:
    case 8:
      print("Summer ☀️");
      break;

    case 9:
    case 10:
    case 11:
      print("Autumn \"Full\" 🍂");
      break;

    case 12:
    case 1:
    case 2:
      print("Winter ⛈");
      break;

    default:
      print("Please, Enter a number of the month between 1 to 12");
  }

}