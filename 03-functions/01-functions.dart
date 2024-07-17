void main() {
  print(greet(name: "Rushil"));
  print(greet(age: 26, name: "Rushil"));
}

String greet({required String name, int? age}) {
  String greeting = "Hi, my name is ${name}";
  if (age != null) {
    greeting += " and I am ${age} years old.";
  } else {
    greeting += ".";
  }

  return greeting;
}
