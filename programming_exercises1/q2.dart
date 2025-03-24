void main() {
  /*
  Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
   */
  print(temperatureConverter(0, "C"));
  print(temperatureConverter(100, "C"));
  print(temperatureConverter(32, "F"));
  print(temperatureConverter(212, "F"));
}

double temperatureConverter(int temperatureValue, String temperatureUnit) {
  double convertedTemperature;

  if (temperatureUnit.toUpperCase() == "C") {
    convertedTemperature = ((9 / 5.0) * temperatureValue) + 32;
    return convertedTemperature;
  } else if (temperatureUnit.toUpperCase() == "F") {
    convertedTemperature = (5 / 9.0) * (temperatureValue - 32);
    return convertedTemperature;
  } else {
    print(
        "Invalid Unit, the unit has to be only ('C' for Celsius, 'F' for Fahrenheit)");
    return 0;
  }
}
