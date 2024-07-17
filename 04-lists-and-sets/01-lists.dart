void main() {
  List<int> scores = [50, 75, 100, 125];
  var players = [1, "Mario", "Luigi", "Mario"];

  print(scores);
  print(players);

  scores.add(150);
  // players.remove("Mario");
  players.removeLast();
  // scores.shuffle();

  print(scores);
  print(players);
  print(players.length);
  print(scores.indexOf(75));
}