import 'package:flutter/material.dart';
import 'package:flutter_app/addScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Book.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome to demo app",
      theme: new ThemeData(primaryColor: Colors.green.shade500),
      home: new MyApp(),
    );
  }

}

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}
class MyAppState extends State<MyApp> {
  MyAppState();
  final databaseReference = Firestore.instance;
  final listLength = 90;
//   List<Book> _listBook = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome to demo app",
          style: TextStyle(
              color: Colors.redAccent,
              fontSize: 18.0,
          ),
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.add,
              color: Colors.redAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
          iconSize: 30.0,
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
//      body: new ListView.builder(
//        itemCount: listLength,
//        itemBuilder: (BuildContext context, int i) {
//          return _buildRow(i);
//        },
//      ),
    );
  }

//  Widget _buildRow(int key) {
//    return new ListTile(
//      leading: new CircleAvatar(
//        backgroundColor: Colors.green.shade300,
//        backgroundImage: new NetworkImage(_listBook[key].avatar),
//      ),
//      title: new Text(_listBook[key].name),
//      subtitle: new Text(_listBook[key].author),
//    );
//  }
//
//  _loadData() {
//    databaseReference.collection("Book").getDocuments()
//                      .then((QuerySnapshot snapshot) {
//                      snapshot.documents.forEach(
//                          (f) => _listBook.add(Book.fromSnapShot(f))
//
//                      );
//    });
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    _loadData();
//  }


}

