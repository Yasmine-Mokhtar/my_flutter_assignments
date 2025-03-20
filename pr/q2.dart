void main() {
  /*
  Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
   */
print(temperatureConvertor(0, "c"));
print(temperatureConvertor(100, "c"));
print(temperatureConvertor(-40, "c"));
print(temperatureConvertor(32, "f"));
}

double temperatureConvertor(double value, String unit){
  if(unit.toUpperCase() == "C"){
    return (value *(9 / 5.0) + 32);
  } else if (unit.toUpperCase() == "F"){
    return (value - 32) * (5 / 9.0);
  } else {
    print ("Invalid, please choose between ('C' for Celsius, 'F' for Fahrenheit) as inputs");
    return 0;
  }
}

