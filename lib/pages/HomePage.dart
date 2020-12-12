import 'package:flutter/material.dart';
import 'package:tic_toc_toe/pages/Tictactoe.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select game mode"),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Tictactoe(
                    isTwoPlayer: true,
                  ),
                ),
              ),
              child: Text("Two Player"),
            ),
            FlatButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Tictactoe(),
                ),
              ),
              child: Text("Play vs computer"),
            ),
          ],
        ),
      )),
    );
  }
}
