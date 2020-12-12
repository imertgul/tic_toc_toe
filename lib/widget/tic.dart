import 'package:flutter/material.dart';

typedef OnChanged = void Function(String);

class Tic extends StatefulWidget {
  OnChanged onChanged;
  Tic({this.onChanged});
  @override
  _TicState createState() => _TicState();
}

class _TicState extends State<Tic> {
  String value = "X";
  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}
