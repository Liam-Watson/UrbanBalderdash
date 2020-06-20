import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/pages/lobby.dart';

import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/login.dart';
import 'package:testapp/pages/createLobby.dart';
import 'package:testapp/pages/lobby.dart';
import 'package:testapp/pages/joinLobby.dart';

class CreateLobby extends StatefulWidget {
  //@override
  cLobby createState() => cLobby();
}

class cLobby extends State<CreateLobby> {
  TextEditingController lName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          color: Colors.yellow,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(0),
                child: Text(
                  "Create Lobby",
                  style: TextStyle(
                    fontSize: 55,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
                child: TextField(
                  controller: lName,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1,
                      ),
                    ),
                    labelText: "Lobby Name",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: RaisedButton(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70.0),
                    side: BorderSide(color: Colors.grey[700]),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (__) => new Lobby(LobbyInfo(lName.text))));
                  },
                  elevation: 20,
                  color: Colors.blue,
                  child: Expanded(
                    flex: 20,
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  //splashColor: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
