import 'package:flutter/material.dart';
import '../widget/tic.dart';

class Tictactoe extends StatefulWidget {
  final bool isTwoPlayer;
  Tictactoe({this.isTwoPlayer = false});
  @override
  _TictactoeState createState() => _TictactoeState();
}

class _TictactoeState extends State<Tictactoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return Center(
                child: Tic(),
              );
            }),
          ),
        ),
      ),
    );
  }
}
