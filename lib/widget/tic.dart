import 'package:flutter/material.dart';
import '../model/Game.dart';

typedef OnChanged = void Function(String);

class Tic extends StatefulWidget {
  int x;
  final bool isPlayed;
  final OnChanged onChanged;
  Tic({this.onChanged, this.isPlayed = false, this.x});
  @override
  _TicState createState() => _TicState();
}

class _TicState extends State<Tic> {
  String value = " ";
  pressed() {
    setState(() {
      if (!widget.isPlayed) {
        myGame.turn == 0 ? value = "X" : value = "O";
      }
      myGame.map[widget.x] = value;
    });
    widget.onChanged("Oynandı");
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => pressed(),
      child: Text(value),
    );
    // return Text(value);
  }
}
