import 'package:flutter/material.dart';
import 'package:tic_toc_toe/model/Player.dart';
import '../widget/tic.dart';

class Tictactoe extends StatefulWidget {
  final bool isTwoPlayer;

  Tictactoe({this.isTwoPlayer = false});
  @override
  _TictactoeState createState() => _TictactoeState();
}

class _TictactoeState extends State<Tictactoe> {
  Player player1;
  Player player2;
  List<Player> players = new List<Player>();
  @override
  void initState() {
    super.initState();
    player1 = new Player(side: "X");
    widget.isTwoPlayer
        ? player2 = new Player(side: "O", isComputer: true)
        : player2 = new Player(side: "O");
    players.add(player1);
    players.add(player2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Player 1: x"),
            Text("Player 2: 0"),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(9, (index) {
                  return Center(
                    child: Tic(),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
