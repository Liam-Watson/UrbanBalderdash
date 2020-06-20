import 'dart:io';
import 'package:flutter/material.dart';
import 'package:testapp/pages/home.dart';
import 'package:testapp/pages/login.dart';
import 'package:testapp/pages/createLobby.dart';
import 'package:testapp/pages/lobby.dart';
import 'package:testapp/pages/joinLobby.dart';
import 'package:testapp/pages/game.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginWid(),
        "/home": (context) => Home(),
        "/createLobby": (context) => CreateLobby(),
       // "/lobby": (context) => Lobby(),
        "/joinLobby": (context) => JoinLobby(),
        "/game": (context) => Game(),
      },//MyCustomForm(),
    );
  }

}
