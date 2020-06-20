import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginWid extends StatefulWidget {
  @override
  Login createState() => Login();
}

class Login extends State<LoginWid> {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final focusUserName = FocusNode();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/Logo.GIF",
              colorBlendMode: BlendMode.multiply,
              color: Colors.white,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 10),
              child: TextField(

                controller: userNameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  focusColor: Colors.blueGrey,
                  labelText: "Enter username ",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white,
                    ),
                  ),
                  hintText: "Sweaty Crocs",
                  enabled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                  ),
                  helperStyle: TextStyle(fontSize: 20),
                  hintStyle: TextStyle(fontSize: 20),
                ),
                autofocus: true,
                onSubmitted: (v) {
                  FocusScope.of(context).requestFocus(focusUserName);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: TextField(
                focusNode: focusUserName,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  labelText: "Enter your email",

                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.grey)),
                  hintText: "example@email.co.za",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  helperStyle: TextStyle(fontSize: 20),
                  hintStyle: TextStyle(fontSize: 20),
                ),
                controller: emailController,
                onSubmitted: (q) {
                  if (emailController.text != null) {
                    print(emailController.text.toString());
                  }
                },
              ),
            ),
            Container(
              child: RaisedButton(
                  child: Text("Submit"),
                  color: Colors.yellow,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    new user((userNameController.text), (emailController.text));
                    Navigator.pushReplacementNamed(context, "/home");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class user {
  String userName;
  String email;

  user(String userName, String email) {
    this.userName = userName;
    this.email = email;
  }
}
