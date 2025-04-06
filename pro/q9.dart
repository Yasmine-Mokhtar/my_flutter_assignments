void main() {
  /*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn,
and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
   */
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;
  Book(
      {required this.title,
      required this.author,
      required this.isbn,
      required this.isAvailable});
  void displayInfo() {
    print("Book Info:");
    print("----------------------");
    print("Title: $title");
    print("Author: $author");
    print("ISBN: $isbn");
    print("Availability: $isAvailable");
  }
}

class Library {
  List<Book> myBooks = [];

  void addBook(Book newBook) {
    if (myBooks.contains(newBook)) {
      print("$newBook is already exist");
    } else {
      myBooks.add(newBook);
      print("$newBook has been added to your library successfully");
    }
  }

  void borrowBook(String isbnNumber) {
    for (var item in myBooks) {
      if (item.isbn != isbnNumber) {
        print(
            "the library does not have a book holding this ISBN number: $isbnNumber");
      } else if (item.isbn == isbnNumber && item.isAvailable == true) {
        item.isAvailable = false;
        print(
            "The book that holds ISBN number: $isbnNumber is available, you can get it from Neuron-Science Section A4");
      } else if (item.isbn == isbnNumber && item.isAvailable == false) {
        print(
            "The book that holds ISBN number: $isbnNumber is not available right now, another author borrow it, "
                "and it's return time is at 12:00 PM");
      }
    }
  }

  void returnBook(String isbnNumber){
    for(var item in myBooks){
      if(item.isbn != isbnNumber){
        print(
            "the library does not have a book holding this ISBN number: $isbnNumber");
      } else if(item.isbn == isbnNumber){
        item.isAvailable = true;
        print("The book that holds ISBN number: $isbnNumber is returned successfully");
      }
    }
  }

  void searchByTitle(String title){
    for(var item in myBooks){
      if(item.title == title){
        item.displayInfo();
      } else {
        print("The library does not has a book holding Title: $title");
        print("The Books' Titles Available in your Library are: ");
        print("==========================================================");
        for(var item in myBooks){
          item.displayInfo();
        }
      }
    }
  }
}
