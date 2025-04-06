void main(){
  /*

Check Leap Year
Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100,
except if it is also divisible by 400.
   */
  isLeapYear(2000);
  isLeapYear(2004);
  isLeapYear(2012);
  isLeapYear(1900);
  isLeapYear(2001);
  isLeapYear(2010);

}
void isLeapYear(int year){
  if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0){
    print("$year is a leap year");
  } else {
    print("$year is not a leap year");
  }
}
