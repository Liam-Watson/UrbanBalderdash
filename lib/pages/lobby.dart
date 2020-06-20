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
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
            lby.getName(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: RaisedButton(
            elevation: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80)
            ),
            color: Colors.blue,
            child: Text(
              "Play",

              style: TextStyle(
                fontSize: 120,
                color: Colors.white
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
