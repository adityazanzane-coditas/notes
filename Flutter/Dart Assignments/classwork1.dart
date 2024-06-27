class Singleton {
  static Singleton _instance = Singleton._internal();
  Singleton._internal();
  factory Singleton() => _instance;
  int count = 0;
}

class AIncrement {
  Singleton toIncrement = Singleton();
  void incrementByOne() {
    toIncrement.count++;
  }
}

class BDecrement {
  Singleton toDecrement = Singleton();
  void decrementByOne() {
    toDecrement.count--;
  }
}

class CIncrementByFive {
  Singleton toIncrementByFive = Singleton();
  void incrementByFive() {
    toIncrementByFive.count += 5;
  }
}

class DToPerformAll {
  AIncrement increment = AIncrement();
  BDecrement decrement = BDecrement();
  CIncrementByFive incrementByFive = CIncrementByFive();
  Singleton performAllOperations = Singleton();
  void performOperation() {
    increment.incrementByOne();
    decrement.decrementByOne();
    incrementByFive.incrementByFive();
    print(performAllOperations.count);
  }
}

void main() {
  DToPerformAll operations = DToPerformAll();
  operations.performOperation();
}
