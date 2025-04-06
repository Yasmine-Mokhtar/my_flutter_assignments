import "dart:io";
void main(){
  /*
Nested If for Temperature Ranges
Objective: Use nested if statements to check multiple conditions.
Instructions:
- Create an integer variable temperature.
- If temperature is above 30, print 'It's hot!'.
- If it's between 15 and 30, print 'It's warm.'.
- Otherwise, print 'It's cold.'.
   */

  int temperature;
  stdout.write("Enter the temperature: ");
  String input = stdin.readLineSync()!;
  if(input.trim().isEmpty){
    print("Invalid input, the input can't be empty");
    return;
  }

  try{
    temperature = int.parse(input);
  } catch(e){
    print("Invalid input, the input has to be a number");
    return;
  }

  if(temperature > 30){
    print("It's hot!🌞️");
  } else if (temperature >= 15 && temperature <= 30){
    print("It's warm!🌤️");
  } else {
    print("It's cold!❄️");
  }
}