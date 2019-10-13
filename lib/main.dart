import 'package:flutter/material.dart';

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
  final listLength = 90;
  var _listBook = <Book>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome to demo app"),
        leading: new IconButton(
            icon: new Icon(
              Icons.add,
              color: Colors.redAccent,
            ),
            onPressed: null
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: new ListView.builder(
        itemCount: listLength,
        itemBuilder: (BuildContext context, int i) {
          return _buildRow(i);
        },
      ),
    );
  }

  Widget _buildRow(int key) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: Colors.green.shade300,
        backgroundImage: new NetworkImage(_listBook[key].avatar),
      ),
      title: new Text(_listBook[key].name),
      subtitle: new Text(_listBook[key].author),
    );
  }

  _loadData() {
      
  }
}

