void main(){
  /*
 10. For-Each Loop, Lists & String Manipulation
 Create a list of 5 words.
- Iterate through the list using a for-each loop.
- Convert each word to uppercase.
- Print each word in uppercase.
   */
  List<String> subjects = ["Psychology", "Nuro-Science" , "Philosophy", "Math", "Science"];
  subjects.forEach((subject){
    print("The subject : ${subject.toUpperCase()}");
  });

}