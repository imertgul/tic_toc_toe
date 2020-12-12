import 'Player.dart';

class Game {
  List<Player> players;
  var map = List<String>.filled(9, " ");
  int turn;

  Game({this.turn = 0});

  void nextTurn() {
    if (!isWin())
      turn == 0 ? turn = 1 : turn = 0;
    else
      print("Kazanma durumu");
  }

  bool isWin() {
    for (var i = 0; i < 7; i++) {
      if (check(winQ[i], winW[i], winE[i])) return true;
    }
    return false;
  }

  bool check(q, w, e) {
    if (map[q] != " " && map[w] != " " && map[e] != " ") {
      if (map[q] == map[w] && map[w] == map[e]) {
        return true;
      }
    }
    return false;
  }
}

Game myGame = new Game();

var winQ = [
  0,
  3,
  6,
  0,
  1,
  2,
  0,
  2,
];
var winW = [
  1,
  4,
  7,
  3,
  4,
  5,
  4,
  4,
];
var winE = [
  2,
  5,
  8,
  6,
  7,
  8,
  8,
  6,
];
