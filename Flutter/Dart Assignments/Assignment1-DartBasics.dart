// Assignment 1 - DART BASICS

void main() {
// Declare a variable named 'message' and assign the value "Hello, Dart!" to it.
  var message = "Hello, Dart!";
  print(message);

// Write a Dart program that checks if a given number is even or odd.
// 		Input: 2
// 		Output:	 2 is even
  int checkNumber = 2;
  if (checkNumber % 2 == 0) {
    print('$checkNumber is even number');
  } else {
    print('$checkNumber is odd number');
  }

// Create a list of fruits and print each fruit using a loop.
// 		Input: ['Apple', 'Banana', 'Orange', 'Grapes']
// 		Output:	 Apple, Banana, Orange, Grapes
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
  for (var inputOfFruits in fruits) {
    print(inputOfFruits);
  }

// Define a function named 'multiply' that takes two parameters and returns their product.
// 		Input: 5, 2
// 		Output:	 The product is 10.
  multiply(firstNumber, secondNumber) => firstNumber * secondNumber;
  print("The product is ${multiply(5, 2)}");

// Create a class named 'Person' with a constructor and a method to display the person's name.
// 		Input: Person person = Person(‘Agent Jack’)
// 			person.display()
// 		Output:	 My name is Agent Jack

  //Should be outside void main()
  // class Person{
  //   String personName;
  //   Person(this.personName);
  //   void display(){
  //     print("My name is $personName");
  //   }
  // }
  // var person = Person('Agent Jack');
  // person.display();

// Define a Dart program that uses a map to store the age of different people and prints the ages.
// 		Input: Map<String, int> ages = {
//     'Alice': 25,
//     'Bob': 30,
//     'Charlie': 22,
//   };
// 		Output:	 Alice is 25 years old //… should print all items in new line
//                 Bob is 30 years old
//                 Charlie is 22 years old

  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };
  for (var peopleName in ages.keys) {
    print("${peopleName} is ${ages[peopleName]} years old");
  }

// Write a Dart function that divides two numbers and handles the case when the denominator is zero. (USING Try Catch)
// 		Input: 5, 2     |  Input: 5, 0
// 		Output:	 2.5   |  Output: Cannot divide by zero.

  double? divideNumber(int number1, int number2) {
    try {
      if (number2 == 0) throw Exception('Cannot divide by zero.');
      return number1 / number2;
      // } on IntegerDivisionByZeroException {
    } catch (e) {
      // print('Cannot divide by zero.');
      print(e);
    }
    return null;
  }

  print(divideNumber(5, 2));
  print(divideNumber(5, 0));

// Write a Dart program that removes duplicates from a list and prints the unique elements.
// 		Input: [1, 2, 3, 2, 4, 5, 1, 6]
// 		Output:	 [1, 2, 3, 4, 5, 6]
  List numbers = [1, 2, 3, 2, 4, 5, 1, 6];
  var uniqueElements = numbers.toSet().toList();
  print(uniqueElements);

// Write a Dart program that checks whether a given number is positive, negative, or zero.
// 		Input: 7
// 		Output:	 Positive

  int inputNumber = 7;
  if (inputNumber > 0) {
    print("Positive");
  } else if (inputNumber < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

// Create a Dart program that uses a switch statement to determine the day of the week based on a given number (1-7). (USING Switch Case)
// 		Input: 3                     | Input: 23
// 		Output:	 Wednesday | Output: Invalid Day number
  int dayInNumber = 23;
  switch (dayInNumber) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid Day number');
  }

// Write a Dart program that uses a switch statement to determine the season based on a given month. (January/February/March - Winter), (April/May/June - Sprint), (July,August,September - Summer), (October/November/December - Fall)
// 		Input: Jan
// 		Output:	 Winter

  String givenMonth = 'Feb';
  switch (givenMonth) {
    case "Jan" || "Feb" || "Mar":
      print('Winter');
      break;
    case "Apr" || "May" || "Jun":
      print('Spring');
      break;
    case "Jul" || "Aug" || "Sept":
      print('Summer');
      break;
    case "Oct" || "Nov" || "Dec":
      print('Fall');
      break;
    default:
      print("Invalid Month");
  }

// Write a Dart program that skips printing even numbers from a list of integers using 'continue'.
// 		Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// 		Output:	 1,3,5,7,9

  List<int> skipEvenNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var skip in skipEvenNumber) {
    if (skip % 2 == 0) continue;
    print(skip);
  }

// Create a Dart program that finds the first occurrence of a negative number in a list using 'break'.
// 	Input: [5, 8, -3, 10, -7, 2]
// 		Output:	 5, 8
  List<int> findNegativeNumber = [5, 8, -3, 10, -7, 2];
  for (var negativeNumber in findNegativeNumber) {
    if (negativeNumber < 0) break;
    print('The first occurrence is: $negativeNumber');
  }

// Write a Dart program with a function that calculates the volume of a box.
// The function should take three parameters: length, width, and height.
// Make height an optional parameter with a default value of 1.0.
// Input: length: 10, width: 10, height, 3 | Input: length: 10, width: 10
// 		Output:	 300                                        | Output: 100

  double volumeOfBox(int length, int width, [double height = 1.0]) {
    return length * width * height;
  }

  print(volumeOfBox(10, 10, 3));

// Write a Dart program that uses an “where” to filter a list of even numbers.
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// 		Output:	 2,4,6,8,10
  var numbersInputed = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var filterResult = numbersInputed.where((number) => number % 2 == 0);
  print(filterResult);

// Combine two lists using spread operator
// Input: [1,2,3,4], [-1,-2,-3,-4]
// Output: [-1,-2,-3,-4, 1,2,3,4]
  List<int> list1 = [1, 2, 3, 4];
  List<int> list2 = [-1, -2, -3, -4];

  List<int> combinedList = [...list1, ...list2];
  print(combinedList);
}
