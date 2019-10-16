import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Book.dart';
import 'package:flutter_app/main.dart';


class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add new book",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: new Center(
            child: new Text("Add new book",
              style: new TextStyle(
                color: Colors.red.shade500,
                fontSize: 23.0
              ),
            ),
          ),
        ),
        body: CustomForm(),
      ),
    );
  }

}
class CustomForm extends StatefulWidget {

  @override
  CustomFormState createState() {
    return CustomFormState();
  }

}
class CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final databaseReference = Firestore.instance;
  String bookInput = '';
  String authorInput = '';


  @override
  Widget build(BuildContext context) {
    return new Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40.0,
          right: 40.0,
          top: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name of book:',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.redAccent,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.start,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter text';
                }
                return null;
              },
              onChanged: (text) {
                bookInput = text;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                'Name of author:',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.redAccent,
                  fontStyle: FontStyle.normal,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter text';
                }
                return null;
              },
              onChanged: (text) {
                authorInput = text;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(

                child: MaterialButton(

                  onPressed: () => _OnSignUpButtonClick(bookInput, authorInput),
                  child: new Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.red.shade600,
                    ),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _OnSignUpButtonClick(String book, String author) {

      createBook();
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()));

  }
  void createBook() async {
      DocumentReference ref = await databaseReference.collection("Book").add({
      'name': bookInput,
      'author': authorInput,
      'avatar': null
    });
      print(ref.documentID);
  }

}