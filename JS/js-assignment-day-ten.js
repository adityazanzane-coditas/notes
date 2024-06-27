// DAY-10 Assignment
// 1. If user is 18 or older , give feedback: 'You are allowed to Marry' but if not 18 console feedback stating to wait for the number of years he needs to turn 18.
function ageGroup(age) {
  if (age >= 18) {
    console.log(`You are allowed to Marry`);
  } else {
    const waitForYears = 18 - age;
    console.log(`Need to wait for ${waitForYears} years.`);
  }
}
ageGroup(17);

// 2. Compare the values of myAge and yourAge. Based on the comparison and log the result to console stating who is older.
// Enter your age: 30
// You are 5 years older than me.
function compareAges(myAge, yourAge) {
  const ageDifference = Math.abs(myAge - yourAge);
  if (myAge > yourAge) {
    console.log(`You are ${ageDifference} years older than me`);
  } else {
    console.log(`I am ${ageDifference} years older than you`);
  }
}
compareAges(21, 30);

// 3. If myAge is greater than yourAge return 'yourAge is greater than myAge ' else 'myAge is less than yourAge'. Try to implement it in to ways.
function ageComparison(myAge, yourAge) {
  const result =
    myAge > yourAge
      ? "yourAge is greater than myAge"
      : "myAge is less than yourAge";
  console.log(result);
}
ageComparison(41, 69);

// 4. Check, if a number is even or not.
function isEvenNumber(number) {
  const checkIsEven = number % 2 === 0 ? "Even number" : "Not an even number";
  console.log(checkIsEven);
}
isEvenNumber(5);

// 5. Write a code which can give grades to students according to theirs scores:
// 80-100, A
// 70-89, B
// 60-69, C
// 50-59, D
// 0-49, F
const score = 69;
switch (true) {
  case score > 80 && score <= 100:
    console.log("A");
    break;
  case score > 70 && score <= 79:
    console.log("B");
    break;
  case score > 60 && score <= 69:
    console.log("C");
    break;
  case score > 50 && score <= 59:
    console.log("D");
    break;
  case score > 0 && score <= 49:
    console.log("F");
    break;
  default:
    console.log("The input is invalid");
}

// 6. Check if the season is Rainy, Winter, Spring or Summer. If the user input is :
// September, October or November, the season is Rainy.
// December, January or February, the season is Winter.
// March, the season is Spring
//  April, May, June, July or August, the season is Summer
const getSeason = (month) => {
  const monthtolowercase = month.toLowerCase();
  return monthtolowercase === "september" ||
    monthtolowercase === "october" ||
    monthtolowercase === "november"
    ? "Rainy"
    : monthtolowercase === "december" ||
      monthtolowercase === "january" ||
      monthtolowercase === "february"
    ? "Winter"
    : monthtolowercase === "march"
    ? "Spring"
    : monthtolowercase === "april" ||
      monthtolowercase === "may" ||
      monthtolowercase === "june" ||
      monthtolowercase === "july" ||
      monthtolowercase === "august"
    ? "Summer"
    : "Invalid Month";
};
console.log(getSeason("July"));

// 7. Check if a day is weekend day or a working day. Your script will take day as an input.
function checkDay(day) {
  switch (day.toLowerCase()) {
    case "monday":
    case "tuesday":
    case "wednesday":
    case "thursday":
    case "friday":
      return "Working Day";
    case "saturday":
    case "sunday":
      return "Weekend Day";
    default:
      return "Invalid input! Please provide valid input";
  }
}
const inputDay = "Monday";
const result = checkDay(inputDay);
console.log(result);

// 8. Write a program which tells the number of days in a month.
const getDaysInMonth = (month, year) => new Date(year, month, 0).getDate();
console.log(getDaysInMonth(2, 2024));

// 9. Write a program to check whether the year is leap year or not.
const isLeapYear = 2024;
(isLeapYear % 4 == 0 && isLeapYear % 100 != 0) || isLeapYear % 400 == 0
  ? console.log(`${isLeapYear} is a leap year`)
  : console.log(`${isLeapYear} is not a leap year`);

// 10. Write a JavaScript ternary expression that checks the following conditions:
// If the first condition (condition1) is true, it should check the second condition (condition2). If condition2 is true, set the result to 'A', otherwise set it to 'B'.
// If the first condition (condition1) is false, it should check another condition (condition3). If condition3 is true, set the result to 'C', otherwise set it to 'D'.
const isAdityaIntern = true;
const isAdityaWorking = true;
const isAdityaMarried = false;
const checkCondition = isAdityaIntern
  ? isAdityaWorking
    ? "A"
    : "B"
  : isAdityaMarried
  ? "C"
  : "D";
console.log(checkCondition);

// 11. What will be the result of the following nested ternary expression:
// let result = true ? false ? true ? 'A' : 'B' : false ? 'C' : 'D' : 'E';
// console.log(result);
const nested_result = true
  ? false
    ? true
      ? "A"
      : "B"
    : false
    ? "C"
    : "D"
  : "E";
console.log(nested_result); //ans: D

// Output:-
// Need to wait for 1 years.
// I am 9 years older than you
// myAge is less than yourAge
// Not an even number
// C
// Summer
// Working Day
// 29
// 2024 is a leap year
// A
// D
