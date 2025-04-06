void main(){
  /*
Temperature Converter
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
   */
}
int convertor(int temperature, String unit){
  return 0;
  
}


enum UnitConvertor {
  c,
  f
}

String unitConvertAbbreviation(){
  switch(UnitConvertor){
    case (UnitConvertor.c):
      return "Celsius";
      break;

    case UnitConvertor.f:
      return "Fahrenheit";
      break;

    default:
      return "Invalid value";
  }
}