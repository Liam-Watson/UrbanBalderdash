import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Lobby extends StatefulWidget {
  var lbyInfo;
  Lobby(LobbyInfo lby){
    this.lbyInfo = lby;
  }
  @override
  _LobbyState createState() => _LobbyState(lbyInfo);
}

class _LobbyState extends State<Lobby> {
  LobbyInfo lby;
  _LobbyState(LobbyInfo lby){
    this.lby = lby;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
            lby.getName(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: RaisedButton(
            elevation: 40,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90)
            ),
            color: Colors.grey,
            child: Text(
              "Play",
              style: TextStyle(
                fontSize: 140
              ),
            ),
            onPressed: (){
              Navigator.pushNamed(context, "/game");
            },
          ),
        ),
      ),
    );
  }
}
class LobbyInfo{
  String name;
  LobbyInfo(String name){
    this.name = name;
  }
  getName() => name;
}
