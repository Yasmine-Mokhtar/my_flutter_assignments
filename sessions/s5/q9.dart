void main() {
  /*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
 Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
   */
  Book x = Book(
      title: "VR at the age of AI",
      author: "Jasmine Mokhtar",
      isbn: "09990943B2",
      isAvailable: true);
  Book y = Book(
      title: "AR at the age of AI",
      author: "Jessy",
      isbn: "09990943B4",
      isAvailable: true);
  Library myLibrary = Library([x, y]);
  myLibrary.addBook(x);
  myLibrary.borrowBook("isbn");
  // myLibrary.addBook(y);
  // myLibrary.searchByTitle("AI");
}

class Book {
  final String title, author, isbn;
  bool isAvailable;
  Book(
      {required this.title,
      required this.author,
      required this.isbn,
      required this.isAvailable});

  void displayInfo() {
    print("Book Details📙: ");
    print("Title: $title");
    print("Author: $author");
    print("ISBN: $isbn");
    print("Availability: $isAvailable");
  }
}

class Library {
  final List<Book> _myBooks;
  Library(this._myBooks);
  void addBook(Book newBook) {
    if (_myBooks.contains(newBook)) {
      print("This Book $newBook is already Exist");
      return;
    } else {
      _myBooks.add(newBook);
      print("$newBook has been added to your library successfully");
    }
  }

  // borrowBook(String isbn): Marks a book as borrowed if available.
  void borrowBook(String isbn) {
    bool isFound = false;
    for (Book book in _myBooks) {
      if (book.isbn == isbn && book.isAvailable == true) {
        isFound = true;
      }
    }
    if (isFound) {
      print(
          "You can borrow the book with isbn: $isbn from the Art section B3");
    } else {
      print("There is no book in the library titled: $isbn");
    }
  }

  // returnBook(String isbn): Marks a book as available again.
  void returnBook(String isbn) {
    for (var book in _myBooks) {
      if (book.isbn == isbn && book.isAvailable == false) {
        book.isAvailable = true;
        print(
            "The book titled: ${book.title} are available now, return it to the Art section B3");
      } else if (book.isbn == isbn && book.isAvailable == true) {
        print(
            "The book titled: ${book.title} is already available, maybe it's from another library");
      } else {
        print("There is no book in the library titled: ${book.title}");
      }
    }
  }

  // searchByTitle(String title): Returns books matching the title.
  void searchByTitle(String title) {
    for (var book in _myBooks) {
      if (book.title.contains(title)) {
        print(book.title.contains(title));
      } else {
        print("There is no any books for this keywords");
      }
    }
  }
}
