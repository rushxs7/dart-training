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

