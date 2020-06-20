import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "assets/state1.GIF",
    "assets/state2.GIF",
    "assets/state3.GIF",
    "assets/state4.GIF",
    "assets/state5.GIF",
    "assets/state6.GIF",
    "assets/state7.GIF",
    "assets/state8.GIF",
    "assets/state9.GIF",
    "assets/state10.GIF",
    "assets/state11.GIF",
    "assets/state12.GIF",
    "assets/state14.GIF",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return new Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueGrey,

      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            child: new Center(
              child: Container(
                color: Colors.blueGrey,
                height: MediaQuery.of(context).size.height* 0.6,
                child: new TinderSwapCard(
                  orientation: AmassOrientation.BOTTOM,
                  totalNum: welcomeImages.length,
                  stackNum: welcomeImages.length,
                  swipeEdge: 2.0,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardBuilder: (context, index) {
                    print('index ${index}');
                    return Card(
                      child: Text(welcomeImages[index]),//Image.asset('${welcomeImages[index]}'),
                    );
                  },
                  cardController: controller = CardController(),
                  swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                      //print("Card is LEFT swiping");
                    } else if (align.x > 0) {
                      //print("Card is RIGHT swiping");
                    }
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    print(orientation.toString());
                    if (orientation == CardSwipeOrientation.LEFT) {
                      print("Card is LEFT swiping");
                      print(welcomeImages.length);
                    } else if (orientation == CardSwipeOrientation.RIGHT) {
                      print("Card is RIGHT swiping");
                      print(welcomeImages.length);
                    }
                  },
                ),
              ),
            ),
          ),
        Container(
          child: ListView(
             children: <Widget>[
               Card(
                 child: ListTile(

                 ),
               ),
             ],
          ),
        ),
        ],
      ),

    );
  }
}

