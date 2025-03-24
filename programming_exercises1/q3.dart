void main() {
  /*
Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100,
except if it is also divisible by 400.
   */
  leapYear(2000);
  leapYear(1900);
  leapYear(2020);
}

void leapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        print("Leap Year");
      } else {
        print("Not a leap year");
      }
    } else {
      print("Leap Year");
    }
  } else {
    print("Not a leap year");
  }
}
