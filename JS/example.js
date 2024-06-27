// let number='lsd'
// console.log(parseInt(number))
// console.log(Number(number))
// // let checkNumber= Number.isNaN(number);
// // console.log(checkNumber)

// let pos=1
// let neg=-1

// console.log(isFinite(pos))
// console.log(isFinite(neg))

// const num=21.51
// console.log(num.toFixed())

// const number1=1
// const number2=2

// console.log(typeof(number1+number2))
// console.log(typeof(number1-number2))
// console.log(typeof(number1*number2))
// console.log(typeof(number1/number2))
// console.log(typeof(number1%number2))

// // console.log(Math)
// function generateRandomNumber(){
//     let random=Math.random();
//     console.log(Math.round(random));
// }
// generateRandomNumber();

// console.log(Math.max())

// String

// let number='123'
// console.log(typeof +'123');//add + will give the value of number

// const name='Aditya';
// const greet='Heyy';

// console.log(`${greet}`);//template string

// //1st way
// let greeting = greet + ',' + name;

// console.log(`${greet + ',' + name}`); //template string

// let message = "Hello";
// console.log(message[2]);
// console.log(message.charAt(2));

// message[0]="B";
// console.log(message);//indexing

// console.log(message.split(2));//split method

// console.log(message.toLocaleUpperCase()) //local upper case

// const language="javascript"
// console.log(language.substr(4,6));//Substr is different from substring
// console.log(language.substring(4,6));//substring
// console.log(language.slice(4,6));//slicing it has 3 index
// console.log(language.trim());//trim method
// console.log(language.trimStart());//trim start method
// console.log(language.indexOf('a'));//indexof method
// console.log(language.lastIndexOf('a'));//lastindex method

// Logical operator
// AND, OR, NOT

// console.log(5 < "7");
// console.log(9 !== "9");
// let a = NaN;
// let b = NaN;
// console.log(a == b);
// console.log(a === b);

// //How to compare a array by converting it into string
// let array1 = [11, 22, 33];
// let array2 = [11, 22, 33];

// console.log(JSON.stringify(array1) === JSON.stringify(array2)); //true

// console.log(!!false);

// //Switch Cases
// switch (days) {
//     case 1:
//       console.log("Html day 1");
//       break;

//     case 2:
//       console.log("CSS day 2");
//       break;

//     case 3:
//       console.log("JS day 3");
//       break;

//     default:
//       console.log("Holiday day");
//   }

// Section 2

// const age = 21;
// const minimumAgeAllowedInSectionOne = 18;
// const minimumAgeAllowedInSectiontwo = 40;

// if (age <= minimumAgeAllowedInSectiontwo) {
//   console.log("Allowed in section 2");
//   if (age >= minimumAgeAllowedInSectiontwo) {
//     console.log("Allowed in section 2");
//   } else {
//     console.log("NotAllowed in section 2");
//   }
// } else {
//   console.log("NotAllowed in section 1");
// }

// Ternary
// age<=minimumAgeAllowedInSectiontwo === true ? age>=minimumAgeAllowedInSectionOne === true : console.log("allow in section 1 and 2") : console.log("not allowed in section one") : console.log("not allowed in section two");

// Arrays
// const array = [1, 2, 10, 4, 6, 8];
// console.log(array[""]);

// //Array push
// console.log(array.push("Aditya"));

// //Arrray pop
// console.log(array.pop("Aditya"));

// //Array shift
// console.log(array.pop("Aditya"));

// //Array unshift
// console.log(array.unshift("Aditya"));

// //Array slice
// console.log(array.slice(1, 3));

// //Array .join
// console.log(array.join(1, 3));

// //Array string
// console.log(array.toString(1, 3));

// //Array splice
// arr = [1, 2, 6, 4, 5];
// console.log(arr.splice(1, 21, 22, 4));

// //Array sort
// console.log(array.sort());

// //ARRay reverse
// console.log(array.reverse());

// const numbers = [10, 20, [10, [20]], 30, 40, 50, 60, 70];

// console.log(numbers.flat());
// const number = 12;
// number % 2 === 0 ? "even" : "odd";

// //compare object with each other
// let x = { name: "John", age: 30 };
// let y = { name: "Jane", age: 30 };

// if (x == y) {
//   console.log("Objects are equal");
// } else {
//   console.log("Objects are not equal");
// }

// const numbersArray = [1, 2, 3, [4, 5]];
// for (let index = 0; index < numbersArray.length; index++) {
//   console.log(numbersArray[index]);
// }
// for (const number of numbersArray) {
//   console.log(number);
// }
// console.log(numbersArray.slice());
// const numberArray = numbers;
// console.log(numbersArray.sort());

// //shallow clone
// const shallowCloneArr = [...numbersArray];
// numbersArray[3] = [1, 2, 3];

// // Iteration of Array
// const numbers = [1, 2, 6, [5, 5, 6]];
// for (const number of numbers) {
//   console.log(number);
// }
// const numbersArray = numbers.slice(); //Using slice() we can perform shallow cloning.
// numbers[3][2] = 2;
// console.log(numbersArray);
// console.log(numbers);
// //How to compare object
// const employee1 = {
//   name: "aditya",
//   employeeId: 2,
//   tech: ["react, js"],
//   address: {
//     city: "Pune",
//     country: "India",
//   },
// };
// const employee2 = {
//   name: "aditya",
//   employeeId: 45,
// };
// const {
//   address: { city, country },
// } = employee1;
// console.log(address, city);
// // console.log(employee1 === employee2); // false

// // console.log(employee["name"]);
// const { tech, ...employeeId } = employee1;
// // console.log("Name is : ", name);
// // console.log("Employee Id is : ", employeeId.employeeId);
// // employee2.name = "veer";
// // console.log(employee1["name"]);

// //deep clone

// const deepCloneNumbers = JSON.parse(JSON.stringify(employee2));
// deepCloneNumbers.name = "Rahul";
// console.log(employee2.name);

// //shallow clone and deep clone low dash clone deep new libraray
// //stringfy different types

// const newArray = [1, 2, 3, 4, 5];

//nested destructing
// const { a: x, b: y, c: z } = { a: 1, b: 2, c: 3 };
// console.log(`${x}, ${y}, ${z}`);

// const captainAmerica = {
//   name: {
//     "first Name": "Steve",
//     "last Name": "jobs",
//   },
//   age: 21,
// };

// const {
//   name: { "first Name": firstName, "last Name": lastName = "ZAnzane" },
// } = captainAmerica;

// console.log(firstName); // Output: Steve
// console.log(lastName); // Output: jobs

// Given nested array
// const employeeName = [["Adi"], ["Zan"]];

// // Destructuring nested array into variables
// const [[firstName], [lastName]] = employeeName;

// // Logging the variables
// console.log(firstName); // Output: Adi
// console.log(lastName); // Output: Zan

//key value
// const employeeInfo = {
//   name: "Adi",
//   age: 2,
// };

// const entries = Object.entries(employeeInfo);
// for (const [key, value] of Object.entries(employeeInfo)) {
//   console.log(`Key : ${key} , Value : ${value}`);
// }

// //create two keys which are not in employeeInfo object
// const newEmployeeInfo = {
//   score: 90,
//   winRate: 60,
//   ...employeeInfo,
// };

// console.log(newEmployeeInfo);

// const array = [1, 2, 3, [(4, 5)]];

// const array2 = array.slice();

// array2[3] = 8;

// console.log(array2);
// console.log(array);

// const array3 = Object.assign(array);
// console.log(array3);

// const person = [
//   { name: "Akhil" },
//   { name: "Arjun" },
//   { name: "Shreya" },
//   { name: "Tanuja" },
//   { name: "Suyash" },
//   { name: "Aditya" },
//   { name: "Yash" },
// ];

//iterate over this and console names
// for (let i = 0; i < person.length; i++) {
//   console.log("My name is: " + person[i].name);
// }
//using destructing
// for (const { name } of person) {
//   console.log(`My name is ${name}`);
// }

//using key value
// for (const name of person) {
//   console.log(`Key: ${person.indexOf(name)}, Value: ${name.name}`);
// }

// const personArray = Object.entries(person);
// console.log(personArray);

//map function using array

// numbers = [1, 2, 3, 4, 5];

// const squareNumber = numbers.map((number) => {
//   return number ** 2;
// });

// console.log(squareNumber);

//filter function

// const oddNumbers = numbers.filter((numbers) => {
//   return numbers % 2;
// });
// console.log(oddNumbers);

//reduce method
// const maxOfNumbers = numbers.reduce((accumulator, currentValue) => {
//   if (accumulator < currentValue) {
//     return (accumulator = currentValue);
//   }
// }, Number.MIN_VALUE);
// console.log(maxOfNumbers);

// const minOfNumbers = numbers.reduce((accumulator, currentValue) => {
//   if (accumulator > currentValue) {
//     return (accumulator = currentValue);
//   }
//   return accumulator;
// }, Number.MAX_VALUE);
// console.log(minOfNumbers);

//forEvery method

//loops
//for loop

// const person = {
//   name: "Aditya",
//   tech: "Js",
//   height: "6",
// };

//retrieve the values of object using for loop

// const keysOfPerson = Object.keys(person);

// for (let index = 0; index < keysOfPerson.length; index++) {
//   console.log(person[keysOfPerson[index]]);
// }

//for in  loop
// const numbers = [1, 2, 3, 4, 5];
// const char = "Aditya";

// for (const number in numbers) {
//   console.log(numbers[number]);
// }
// for (const number of numbers) {
//   console.log(number);
// }
// for (const character of char) {
//   console.log(character);
// }
// for (const character in char) {
//   console.log(character);
// }

// function welcome() {
//   return `to world, ${"Aditya"}`;
// }
// console.log(this.welcome());

// const greet = (hello) => {
//   return `hi, ${"hello"}`;
// };
// console.log(greet());

// const hehe = (hello) => {
//   return `laugh, ${"hello"}`;
// };

// function greetPerson(name) {
//   console.log("Hi");
//   return `Hello, ${name}`;
// }
// greetPerson("Akhil");

// const greeting = greetPerson("Akhil");
// console.log(greeting());

// function squareNumber(number) {
//   return number * number;
// }
// let result1 = squareNumber(5);
// console.log(result1);

// const squareOfNumber = (num) => num ** 2;
// let result2 = squareOfNumber(7);
// console.log(result2);

//In JavaScript, functions are objects (hence the designation of first-class object).
//JavaScript has all those abilities or features that are required to be a language having First Class Functions,
//hence functions are treated as First Class Citizens.

//High order function
//map
// const add = (number1, number2) => {
//   return number1 + number2;
// };
// const displaySum = (number1, number2) => number1 + number2;
// console.log(displaySum(5, 6));

// //map
// const squareNumber = (number) => {
//   const filterArray = [1, 2, 3, 4];
//   for (const number in filterArray) {
//     filterArray[number] = filterArray[number] ** 2;
//   }
//   return filterArray;
// };
// console.log(squareNumber());

// function customMap(array, callbackFunction) {
//   const result = [];
//   for (const index in array) {
//     const element = array[index];
//     const modifiedOutput = callbackFunction(index, element, array);
//     result.push(modifiedOutput);
//   }
//   return result;
// }
// console.log(
//   customMap([1, 2, 3, 4, 5], (index, element) => {
//     console.log(index);
//     return element ** 2;
//   })
// );
// const addition = (number1, number2) => number1 + number2;

// addition(number1, number2);
// const number1 = 5;
// const number2 = 6;

// function multiply(number1) {
//   const number2 = 6;
//   const display = function displayResult() {
//     return number1 * number2;
//   };
//   return display();
// }
// console.log(multiply(5));

// function addition(number1) {
//   const number2 = 6;
//   return (obj = {
//     result: number1 + number2,
//     displayResult: (number2) => {
//       return number1 - number2;
//     },
//   });
//   //   return obj.displayResult(number2);
// }
// console.log(addition(1));

//increment
// function increment(number1) {
//   const display = function displayResult() {
//     return ++number1;
//   };
//   return display;
// }
// const result1 = increment(5);
// const result2 = increment(10);

// console.log(result1());
// console.log(result2());
// console.log(result1());
// console.log(result2());

//Asynchronus
//Set time out
// console.log("Hello");
// const timeOut = setTimeout(() => console.log("Hello"), 5000);
// const timeInterval = setInterval(() => console.log("Hello"), 5000);
// clearTimeout(timeOut);
// clearInterval(timeInterval);
// console.log(timeOut);

// setTimeout(() => {
//   console.log("hi");
//   setTimeout(() => {
//     console.log("hi2");
//   }, 900);
//   console.log("hi3");
// }, 1000);

// setTimeout(console.log("Adi"), 1000); error

//destructuring data
// const data = {
//   user: [{ name: "Arjun" }, { name: "Akhil" }],
// };

// const {
//   user: [person1, person2],
// } = data;

// const { name: name1 } = person1;
// const { name: name2 } = person2;

// console.log(name1);
// console.log(name2);

//Promises
// const getUserPromise = (onSuccess, onFailure) => {
//   const users = [{ name: "Aditya" }, { name: "Sanket" }];
//   const duration = Math.random() * 5000;
//   setTimeout(() => {
//     const random = Math.random();
//     if (random > 0.5) {
//       return onSuccess({ data: users, statusCode: 200, error: null });
//     } else {
//       return onFailure(new Error("Error Occurred"));
//     }
//   }, duration);
// };
// getUserPromise();
//   (data) => {
//     console.log(`Status Code : ${data.statusCode}`);
//     console.log(`Data : ${JSON.stringify(data.data)}`);
//   },
//   (error) => {
//     console.log(`Error Message : ${error.message}`);
//   }
// );

// const promise1 = new Promise((resolve, reject) => resolve("resolved"));
// const promise2 = new Promise((resolve, reject) => resolve("resolved"));
// const promise3 = new Promise((resolve, reject) => reject("rejected"));
// const promise4 = new Promise((resolve, reject) => resolve("resolved"));

// const allPromises = Promise.any([promise1, promise2, promise3, promise4]);

// allPromises
//   .then((result) => {
//     console.log("Result", result);
//   })
//   .catch((err) => console.log("Err", err));

// const resolveAfterTwosec = async () => {
//   return new Promise((resolve, reject) => {
//     setTimeout(function () {
//       console.log("Async Function Executed");
//     }, 2000);
//   });
// };

// const asyncCall = async () => {
//   console.log("Calling resolveAfter2sec");
//   const result = resolveAfterTwosec();
//   console.log(result);
//   console.log("asyn function execution continues after await");
// };

// console.log("Before calling async");
// asyncCall();
// console.log("after calling async");
