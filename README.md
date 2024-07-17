# Dart Training - Rushil
---
## Objectives
- [x] Basics
- [ ] Type Annotations
- [ ] Functions
- [ ] Lists and Sets
- [ ] Control Flow
- [ ] Maps
- [ ] Classes
- [ ] Method Overriding
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
