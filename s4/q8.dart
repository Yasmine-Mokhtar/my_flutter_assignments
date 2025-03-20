void main() {
  /*
  8. Switch Case, Functions & Default Values
Write a function `getDayType(String day)` that:
- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
- Returns "Weekday" otherwise.
- If the input is invalid, return "Invalid day".
Call the function inside `main()` and print the result.
   */
print(getDayType("saturday"));
print(getDayType("MONDAY"));
print(getDayType("DAY"));
}

String getDayType(String day) {

  switch (day.toUpperCase()) {
    case "SATURDAY":
    case "SUNDAY":
      return "Weekend";

    case "MONDAY":
    case "TUESDAY":
    case "WEDNESDAY":
    case "THURSDAY":
    case "FRIDAY":
      return "Weekday";

    default:
      return "Invalid day";
  }
}
