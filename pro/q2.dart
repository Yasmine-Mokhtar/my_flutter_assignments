import 'temp_converter.dart';

void main() {
  /*
  Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
   */

}

num convertTemp(TempConvertor unit, num value){
  switch(unit){
    case TempConvertor.fahrenheit:
      return value;

    case TempConvertor.celsius:
      return value;

    default:
      return value;
  }
}




