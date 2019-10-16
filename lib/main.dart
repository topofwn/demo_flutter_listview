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
   var _listBook = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Welcome to demo app",
          style: TextStyle(
              color: Colors.red.shade500,
              fontSize: 23.0,
          ),
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.add,
              color: Colors.red.shade500,
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
      body: new ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 40.0,
        ),
        itemCount: _listBook.length,
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) return Divider();
          return _buildRow(i);
        },
      ),
    );
  }

  Widget _buildRow(int key) {
    return new ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green.shade300,
        backgroundImage: AssetImage('assets/baseline_replay_black_24pt_2x.png'),
      ),
      title: Text(
          _listBook[key].name,
          style: TextStyle(
            fontSize: 20.0,
          ),
      ),
      subtitle: Text(
          _listBook[key].author,
          style: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.italic,
          ),
      ),
    );
  }

  _loadData() {
    setState(() => {
      databaseReference.collection("Book").
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }


}

