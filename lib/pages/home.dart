import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(50,200,50,50),
                child: ButtonTheme(
                  minWidth: 300,
                  height: 150,
                  child: RaisedButton(
                    color: Colors.blue,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/joinLobby");
                    },
                    textColor: Colors.white,
                    //padding: const EdgeInsets.all(0.0),
                    child: Container(
                      //padding:  EdgeInsets.fromLTRB(140,110,140,110),
                      child: const Text('Join Lobby',
                          style: TextStyle(fontSize: 50.0)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.yellow,
                child: ButtonTheme(
                  minWidth: 300,
                  height: 150,
                  child: RaisedButton(
                    color: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blueGrey),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/createLobby");
                    },
                    elevation: 20.0,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child: const Text('Create Lobby',
                          style: TextStyle(fontSize: 50.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          Navigator.pushReplacementNamed(context, "/login");
        },
        child: Text("back", style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
