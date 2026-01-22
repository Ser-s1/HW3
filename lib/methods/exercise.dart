class Person{
String name = "s";
String email = "r";
Person(this.name,this.email);
}
class Author extends Person{
  static int id = 0;
  Author(super.name,super.email){
    id++;
  }
  
  
  @override
  String toString() {
    return 'Author: $name\n Email: $email\n id: $id';
  }
  
}
class Book{
String? name;
String? ISBN;
int? edition;
Author? author;
Book({this.name,this.ISBN,this.edition,this.author});
@override
  String toString() {
    return 'Book: $name\n edition: $edition \n ISBN: $ISBN\n Author: $author';
  }
String getName(){
  return 'Book: $name';
}
}

class Customer extends Person{
List<Book> bookList = [];

Customer(super.name,super.email, this.bookList);

void AddBook(Book book){
  bookList.add(book);
}

void printInformation(){
  print(toString());
}
@override
  String toString() {
    return 'Customer: $name,\n Email: $email';
  }
  String getName(){
    return name;
  }
  String getEmail(){
    return email;
  }
}
