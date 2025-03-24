void main(){
/*
Question 16:
Task: Write a Dart program that compares two numbers using all the comparison operators
and prints whether each comparison is true or false.
*/
double tempInFrance = 65;
double tempInUK = 62;
bool franceIsHigher = tempInFrance > tempInUK;
bool franceIsHigherOrEqual = tempInFrance >= tempInUK;
bool ukIsLower = tempInUK < tempInFrance;
bool ukIsLowerOrEqual = tempInUK <= tempInFrance;
bool tempAreEqual = tempInUK == tempInFrance;
bool tempAreNotEqual = tempInUK != tempInFrance;

print("🇫🇷France's Temperature is higher than UK = $franceIsHigher 🌦");
print("🇫🇷France's Temperature is higher or equal to the UK = $franceIsHigherOrEqual🌦");
print("🇬🇧UK's Temperature is lower than France = $ukIsLower🌦");
print("🇬🇧UK's Temperature is lower than France or Equal = $ukIsLowerOrEqual🌦");
print("🇫🇷🇬🇧The Temperature in both France and the UK are equal = $tempAreEqual🌦");
print("🇫🇷🇬🇧The Temperature in both France and the UK are Not equal = $tempAreNotEqual🌦");
}