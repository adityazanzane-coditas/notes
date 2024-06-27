import 'dart:async';

// 8. Classes & objects
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// 9. Class modifiers
class Vehicle {
  final String make;
  final String model;
  static int numberOfWheels = 4;

  const Vehicle(this.make, this.model);

  void displayInfo() {
    print('Make: $make, Model: $model, Wheels: $numberOfWheels');
  }
}

Future<void> main() async {
  // 1. Introduction
  print('Dart is an object-oriented programming language developed by Google.');

  // 2. Syntax basics
  print('Hello, World!'); // Printing to the console

  // 3. Types
  int age = 30;
  double height = 1.75;
  String name = 'John';
  var x = 42; // x is inferred to be int
  var y = 3.14; // y is inferred to be double
  var z = 'Hello'; // z is inferred to be String

  // 4. Patterns
  int value = 2;
  switch (value) {
    case 1:
      print('Value is 1');
      break;
    case 2:
      print('Value is 2');
      break;
    default:
      print('Value is neither 1 nor 2');
  }

  // 5. Functions
  int add(int a, int b) {
    return a + b;
  }

  var multiply = (int a, int b) => a * b;
  print(add(2, 3)); // Output: 5
  print(multiply(4, 5)); // Output: 20

  // 6. Control flow
  age = 18;
  if (age >= 18) {
    print('You are an adult');
  } else {
    print('You are a minor');
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    if (number == 3) {
      continue; // Skip the current iteration
    }
    print(number);
  }

  // 7. Error handling
  try {
    int result = 12 ~/ 0; // Divide by zero error
    print(result);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('This will always execute');
  }

  // 8. Classes & objects
  Person john = Person('John', 30);
  john.greet(); // Output: Hello, my name is John and I am 30 years old.

  // 9. Class modifiers
  Vehicle car = Vehicle('Toyota', 'Camry');
  car.displayInfo(); // Output: Make: Toyota, Model: Camry, Wheels: 4

  // 10. Concurrency

  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () => 'Data fetched');
  }

  print('Fetching data...');
  String data = await fetchData();
  print(data); // Output: Data fetched

  // 11. Null safety
  String nonNullableName = 'John';
  // nonNullableName = null; // Error: A value must be provided.

  String? nullableName = null;
  print(nullableName ?? 'No name'); // Output: No name
}
