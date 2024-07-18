void main() {
  List<String> players = ["Mario", "Luigi", "Peach"];

  for (var i = 0; i < players.length; i++) {
    print("Player #${i+1}: " + players[i]);
  }

  for (var player in players) {
    if (player == "Mario") {
      print("It's a me...");
    } else {
      print("Woohoo, it's...");
    }
    print(player);
  }

  List<int> scores = [10, 20, 30, 40, 50];

  for(var score in scores.where((s) => s > 20 )) {
    print(score);
  };
}