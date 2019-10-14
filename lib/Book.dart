import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  String name;
  String author;
  String avatar;
  Book(this.name, this.author, this.avatar);
  Book.fromSnapShot(DocumentSnapshot snapshot) :
      name = snapshot['name'],
      author = snapshot['author'],
      avatar = snapshot['avatar'];
}