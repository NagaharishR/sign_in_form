import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Details"),
        ),
        body: MyCustomForm(),
      ),
    );
  }

}

class MyCustomForm extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => MyCustomFormState();

}

class MyCustomFormState extends State<MyCustomForm> {
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Column(
          children: [
            Text("SignIn Form"),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Please Enter Email/Phone Number"
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: TextField(
             decoration: InputDecoration(
               hintText: "Please Enter Password"
             ),
            ),
            ),
            ElevatedButton(onPressed: () {
              if (formkey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Processing data")));
              }
            },
                child: Text("Login"))
          ],
        )
    );

  }

}

