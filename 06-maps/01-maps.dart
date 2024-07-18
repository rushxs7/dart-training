void main() {
  var planets = {};

  final Map<String, String> planet = {
    "name": "earth",
    "color": "mixed"
  };

  print(planet);
  print(planet["color"]);
  planet["color"] = "blue/green";
  print(planet["color"]);
  print(planet.containsKey("name"));
}