enum TempConvertor{
  celsius,
  fahrenheit
}

TempConvertor convertorTemp(String unit){
  switch(unit.toUpperCase()){
    case "C":
      return TempConvertor.celsius;

    case "F":
      return TempConvertor.fahrenheit;

    default:
      return TempConvertor.celsius;
  }
}