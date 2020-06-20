import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lobby.dart';

class JoinLobby extends StatefulWidget {
  @override
  _JoinLobbyState createState() => _JoinLobbyState();
}

class _JoinLobbyState extends State<JoinLobby> {
  TextEditingController lName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.yellow,
      ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(50),
            color: Colors.yellow,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "Join Lobby",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,

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
                      side: BorderSide(color: Colors.blue),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (__) => new Lobby(LobbyInfo(lName.text))));
                      //Navigator.pushNamed(context, "/lobby");
                    },
                    elevation: 20,
                    color: Colors.blue[300],
                    child: Expanded(
                      flex: 20,
                      child: Text(
                        "Join",
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
