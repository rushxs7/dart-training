# Dart Training - Rushil
---
## Objectives
- [ ] Basics
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
  print('Hello $name!');
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