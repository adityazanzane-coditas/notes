// 1. Class
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// 2. Base Class
class Animal {
  void makeSound() {
    print('The animal makes a sound.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('The dog barks.');
  }
}

// 3. Interface Class
abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

// 4. Final Class
final class ImmutablePoint {
  final double x;
  final double y;

  const ImmutablePoint(this.x, this.y);
}

// 5. Sealed Class (Available in Dart 2.19 and later)
sealed class SealedShape {
  double getArea();
  double getPerimeter();
}

class SealedCircle extends SealedShape {
  final double radius;

  SealedCircle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

class SealedRectangle extends SealedShape {
  final double length;
  final double width;

  SealedRectangle(this.length, this.width);

  @override
  double getArea() {
    return length * width;
  }

  @override
  double getPerimeter() {
    return 2 * (length + width);
  }
}

// 6. Abstract Class
abstract class Vehicle {
  void start();
  void stop();
}

// 7. Abstract Base Class
abstract class BaseVehicle {
  void start() {
    print('Starting the vehicle.');
  }

  void stop();
}

class Car extends BaseVehicle {
  @override
  void stop() {
    print('Stopping the car.');
  }
}

// 8. Abstract Interface Class
abstract class InterfaceShape {
  double getArea();
  double getPerimeter();
}

// 9. Mixin Class
mixin CanFly {
  void fly() {
    print('I can fly!');
  }
}

class Bird with CanFly {
  void chirp() {
    print('Chirp chirp!');
  }
}

// 10. Base Mixin Class
class CanWalk {
  void walk() {
    print('I can walk.');
  }
}

class CanRun extends CanWalk {
  void run() {
    print('I can run.');
  }
}

// 11. Abstract Mixin Class
abstract class CanMove {
  void move();
}

class CanWalkAbstract extends CanMove {
  @override
  void move() {
    print('I can walk.');
  }
}

class CanRunAbstract extends CanMove {
  @override
  void move() {
    print('I can run.');
  }
}

// 12. Abstract Base Mixin Class
abstract class Movable {
  void move() {
    print('Movie');
  }
}
