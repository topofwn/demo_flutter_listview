import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Add new book",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text("Add new book"),
          ),
        ),
        body: new CustomForm(),
      ),
    );
  }

}
class CustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
class CustomFormState extends State<CustomForm>{
  final databaseReference = Firestore.instance;

  _createData() async {
    DocumentReference ref = await databaseReference.collection("Book").add({
      'name': '',
      'author': '',
      'avatar': ''
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}