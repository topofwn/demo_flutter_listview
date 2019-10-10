import 'dart:html';

import 'package:flutter/material.dart';
import 'childItem.dart';

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
          return ItemChild(context, i);
        },
      ),
    );
  }



}

