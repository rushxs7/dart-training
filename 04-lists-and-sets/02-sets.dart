void main() {
  Set<String> names = {"mario", "luigi", "peach"};

  names.add("daisy");
  names.add("peach");
  names.remove("daisy");

  print(names);
}