import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';


class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Add new book",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text("Add new book",
              style: new TextStyle(
                color: Colors.red.shade500,
                fontSize: 18.0
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
class CustomFormState extends State<CustomForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name of book',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.redAccent
              ),
              textAlign: TextAlign.start,
            ),
            TextFormField(
              validator:  (value) {
                if (value.isEmpty) {
                  return 'Please enter text';
                }
                return null;
              },
            ),
            Text(
              'Name of author',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.redAccent
              ),
              textAlign: TextAlign.start,
            ),
            TextFormField(
              obscureText: true,

              validator:  (value) {
                if (value.isEmpty) {
                  return 'Please enter text';
                }
                return null;
              },
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(

              child: MaterialButton(

                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    }
                  },
                child: new Text(
                    "Sign up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.red.shade700,
                  ),
                ),
                color: Colors.lightBlueAccent,
              ),
            ),
            ),
          ],
        ),
    );
  }

}