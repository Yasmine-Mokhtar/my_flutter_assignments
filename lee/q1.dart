void main(){
  Gender myGender = Gender.female;
  switch(myGender){
    case Gender.male:
      print("Male");
    case Gender.female:
      print("Female");
  }

}
enum Gender{
  male, female
}