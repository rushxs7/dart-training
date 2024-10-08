# Dart Training - Rushil
---
## Objectives
- [x] Basics
- [x] Type Annotations
- [x] Functions
- [x] Lists and Sets
- [x] Control Flow
- [x] Maps
- [x] Classes
- [x] Method Overriding
- [ ] Generics
- [ ] Async, Await and Futures
- [ ] Fetching Data
---
## Training Notes
### About the Dart Language
Dart is a statically typed language used to make multi-platform applications.
### Basics
A simple hello world program.
```dart
void main() {
  print('Hello World');
}
```
#### Primitive data types
You may not change the type of a variable at runtime. But you can change the variable to a value of the same type.
```dart
void main() {
  var name = 'Rushil';
  print('Hello ' + name + '!');
  
  // You may not change the type of a variable at runtime.
  name = 15;
  
  // But you can change the variable to a value of the same type
  name = "Mario";

  print('Hello ' + name + '!');
  // You can also print out variables in strings like this.
  print('Hello ${name}!');
}
```
When you use the final keyword to declare a variable, it cannot be altered at runtime. The same can be said about `const` variables. The difference however is that `final` is a runtine constant, and `const` is a compile time constant.

We typically use `final` when we don't know the what our value will be at compile time (eg. fetching data from a server). We use `const` when we do know what value we're gonna get at compile time.
```dart
void main() {
  final name = 'Rushil';
  const age = 26;
  print('Hello ' + name + '! You are ' + age + 'years old.');

  name = 'Mario';
  age = 25;
  print('Hello ' + name + '! You are ' + age + 'years old.');
}
```
### Type Annotations
Instead of using `var` to create a variable, we can explicitly define the type of the variable. Whole numbers can also be assigned as `double`. If we want the values to be constant throughout the runtime we can simply add `const` or `final` before the type annotation.
```dart
void main() {
    final String name = 'Rushil';
    print(name);

    const int age = 26;
    print(age);

    bool isOpen = true;
    print(isOpen);

    // double averageRating = 7.9;
    double averageRating = 7;
    print(averageRating);
}
```
#### Null Safety in Dart
Sometimes we want to initialize a variable but not assign a value to it just yet. We can initialize the variable but dart will not allow the program to run unless a value is assigned. This is where we add a question mark 
```dart
void main() {
    int? points;
    // points must be assigned a value before it can be used. That's why we add the question mark.
    print(points);
}
```
### Functions
The way a function gets defined in dart is right under our noses. The `void` keyword we put infront of the main function is actually the type of data that the function returns. `void` is a special type annotation. It indicates that the function doesn't return any value.

A function is built out of the following: `type of data returned` `name of the function` `(parameters)` `{body of the function}`. Below, we've defined what type of data the function return and also what type of data the function accepts as arguments. Know that the order of the arguments is important.

```dart
void main() {
  print(greet("Rushil"));
}

String greet(String name,int age) {
  return "Hi, my name is ${name} and I am ${age} years old.";
}
```

We can also have optional parameters. We can build such a function like below. The way you call the function is now different. You have to specify which argument adheres to what function parameter. In this case then, the order of arguments does not matter, as they are explicitly passed in. This is important because we will use this a lot in Flutter Widgets.
```dart
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
```

### Lists and Sets
#### Lists
A dart list is just like an array in other languages. A list can contain elements of different types. You can also strongly type a list, just use the `<int>` right after declaring the `List`.

We can add or remove items from a list with the `.add()` and `.remove()` methods. Pass the value you want to add or remove into the method. Do note that the `.remove()` method removes the item that matches the argument given.

There are a few different methods that you can use on lists:
- `.add()` adds a new item to a list.
- `.remove()` removes the first item in the list that matches the argument.
- `.removeLast()` removes the last item in the list.
- `.indexOf()` returns the index of an item in the list that equals the value of the argument.
- `.length` returns the length of a list.
- `.where((el) => el > condition)` return a filtered list of elements that meet the condition (true).

```dart
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
  print(scores.where((score) => score > 75));
}
```

#### Sets
Sets are in some ways different than lists. There are a few exceptions though:
1. Sets do **not** allow duplicate values.
2. Sets are written with curly brackets `{}` instead of straight brackets `[]`.
3. Set additions will not return an error is there is a duplicate item.

```dart
void main() {
  Set<String> names = {"mario", "luigi", "peach"};

  names.add("daisy");
  names.add("peach");
  names.remove("daisy");

  print(names);
}
```
### Control and Flow
There are a few methods to control the flow of the program. They're not very different from other languages.

The for loop is useful to loop over lists. There are two types of for loops: **normal-** and **for in** loops.

```dart
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
}
```

### Maps
A Map is a data structure. It is just like an object literal in Javascript. The way we create a map is similar to how we create a set.
```dart
void main() {
  var planets = {}; // Defaults to empty map
}
```
The written code above will create an empty map and not a set. If, like a set, we were to popolate the curly brackets with integers, the variable would default to the type of set, not map.
```dart
void main() {
  var planets = {5, 10, 15, 20}; // Defaults to set
}
```
Maps are very peculiar. When strongly typed, you need to assign a type to both the key as well as the value.
```dart
void main() {
  Map<String, String> planet = {
    "name": "earth",
    "color": "mixed"
  };
}
```
The values of maps can be changed pretty easily. However, the values or keys cannot be altered to any value of a different data type.
```dart
  planet["color"] = "blue/green";
  print(planet["color"]);
```
The maps also come with their own methods:
- `.containsKey("name")` returns a boolean based on if the key is present.
- `.containsValue("earth")` reeturn a boolean based on if the value if present.
- `.remove("name")` accepts the key as an argument and removes it out of the map.
- `.keys` returns a list of all the different keys.
- `.values` return a list of all the different values.
- `.map()` goes through all the values.

```dart
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
```

### Classes
Classes in Dart work similar to classes in any language. To initialize a class, create a function with the same name as the class inside of the class. That will become the constructor method. 

We can have classes extend other classes and have the child class inherit the methods of the parent class. If the child class has different attributes compared to the parent class, it also needs to be initialized differently. The constructor method of the child class will have to be different but at the same time also take the same parameters as the parent class. The code below describes how this is done properly.

```dart
void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var pizza = Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  print(noodles.neatString());
  print(pizza.neatString());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);
}
```

### Method Overrides
Sometimes we want the child class to have the same function as the parent class but not to deliver the same output.

We can redeclare the same function in the child class but annotate it with an override notation.

```dart
void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var pizza = Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  print(noodles.neatString());
  print(pizza.neatString());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  String toppingString() {
    String toppingString = "";
    for (int i = 0; i < this.toppings.length; i++) {
      toppingString += this.toppings[i];
      if (i != (this.toppings.length - 1)) {
        toppingString += ", ";
      } else {
        toppingString += ".";
      }
    }
    return toppingString;
  }

  // Sometimes we may want to execute a different function over the parent class one because we are dealing with different attributes
  // This is why we include the @override annotation
  @override
  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString() + ". (Toppings: " + this.toppingString() + ")";
  }
}
```

We can override our own methods but we can also override methods provided by the dart language. Normally when we try to print a variable of an class instance we get `Instance of 'Class'`.
```dart
void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var pizza = Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  print(noodles); // Output: Instance of 'MenuItem'
  print(pizza); // Output: Instance of 'Pizza'
}
```

This is expected but if we wanted a string straight from the class we would automatically assume to use the `toString()` method. We can override that method to return the output of our previously overridden method.

```dart
void main() {
  var noodles = MenuItem("Veg. Noodles", 2.99);
  var pizza = Pizza(["Chicken", "Pineapple", "Extra Cheese"], "Hawaiian Pizza", 6.99);

  print(noodles.toString());
  print(pizza.toString());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString();
  }

  @override
  String toString() {
    return neatString();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  String toppingString() {
    String toppingString = "";
    for (int i = 0; i < this.toppings.length; i++) {
      toppingString += this.toppings[i];
      if (i != (this.toppings.length - 1)) {
        toppingString += ", ";
      } else {
        toppingString += ".";
      }
    }
    return toppingString;
  }

  // Sometimes we may want to execute a different function over the parent class one because we are dealing with different attributes
  // This is why we include the @override annotation
  @override
  String neatString() {
    return "One portion of " + this.title + " costs \$" + this.price.toString() + ". (Toppings: " + this.toppingString() + ")";
  }
}
```

When executing the `toString()` method, the called `neatString()` method is different for every class. When executing from the parent class, it'll call the local method. When executed from the child class, it'll call the override method. If you really wanted to, you can write an override `toString()` method in the child class to then execute the logic closest to the class. 

### Generics
Most of the time when we create classes, dart doesn't know what type the functions within it return. That gives us an issue later on, when we want to use an appropriate function. When a certain function returns a class, dart will automatically try to type cast it into a string.

What we can do is create generic types. When creating a class like a collection, it's important that we annotate the return type so that dart can give the appropriate autocomplete strings.

