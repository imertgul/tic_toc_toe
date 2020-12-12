import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Tic extends StatefulWidget {
  @override
  _TicState createState() => _TicState();
}

class _TicState extends State<Tic> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.t),
    );
  }
}
