void main() {
  /*
Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100,
except if it is also divisible by 400.
   */
  print(leapYear(2000));
  print(leapYear(1900));
  print(leapYear(2024));
  print(leapYear(2021));
}

bool leapYear(int year){
  return ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0);
}
