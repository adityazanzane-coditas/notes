// DAY -15 ASSIGNMENT  (LOOPS)
// NOTE: You guys can use (for, for of, for in, while, do while loop), whichever you feel is best.
const countries = [
  "Albania",
  "Bolivia",
  "Canada",
  "Denmark",
  "Ethiopia",
  "Finland",
  "Germany",
  "Hungary",
  "Ireland",
  "Japan",
  "Kenya",
];

// Iterate 0 to 10 using for loop, do the same using while and do while loop
for (let number = 0; number <= 10; number++) {
  console.log("0 to 10 using for loop in ascending manner: ", number);
}

//while
let valueOfJ = 0;
while (valueOfJ <= 10) {
  console.log("0 to 10 using while loop in ascending manner: ", valueOfJ);
  valueOfJ++;
}

//do while
let valueOfK = 0;
do {
  console.log("0 to 10 using do while loop in ascending manner: ", valueOfK);
  valueOfK++;
} while (valueOfK <= 10);

// Iterate 10 to 0 using for loop, do the same using while and do while loop
for (let number = 10; number >= 0; number--) {
  console.log("10 to 0 using for loop in descending manner: ", number);
}

//while
let valueOfL = 10;
while (valueOfL >= 0) {
  console.log("10 to 0 using while loop in descending manner: ", valueOfL);
  valueOfL--;
}

//do while
let valueOfM = 10;
do {
  console.log("10 to 0 using do while loop in descending manner: ", valueOfM);
  valueOfM--;
} while (valueOfM >= 0);

// Iterate 0 to n using for loop
const nthNumber = 5;
for (let valueOfO = 0; valueOfO < nthNumber; valueOfO++) {
  console.log(valueOfO);
}

// 4. Write a loop that makes the following pattern using console.log():
//     #
//     ##
//     ###
//     ####
//     #####
//     ######
//     #######

for (let indexOfPattern = 1; indexOfPattern <= 7; indexOfPattern++) {
  console.log("#".repeat(indexOfPattern));
}

// 5. Using loop print the following pattern
//  i    i^2   i^3
//  0    0     0
//  1    1     1
//  2    4     8
//  3    9     27
//  4    16    64
//  5    25    125
//  6    36    216
//  7    49    343
//  8    64    512
//  9    81    729
//  10   100   1000

for (let indexOfPattern = 0; indexOfPattern <= 10; indexOfPattern++) {
  console.log(
    `${indexOfPattern}  ${indexOfPattern ** 2}  ${indexOfPattern ** 3}`
  );
}

// 5. Use for loop to iterate from 0 to 100 and print only even numbers
for (let index = 0; index <= 100; index += 2) {
  console.log("Even numbers from 0 to 100 are: ", index);
}

// 6. Use for loop to iterate from 0 to 100 and print only odd numbers

for (let index = 0; index <= 100; index++) {
  if (index % 2 !== 0) {
    console.log("Odd numbers from 0 to 100 are: ", index);
  }
}

// 7. Use for loop to iterate from 0 to 100 and print only prime numbers

function isPrimeNumber(num) {
  let isPrime = true;
  for (let index = 2; index < num; index++) {
    if (num % index === 0) {
      isPrime = false;
    }
  }
  return isPrime;
}

for (
  let indexOfPrimeNumber = 0;
  indexOfPrimeNumber <= 100;
  indexOfPrimeNumber++
) {
  if (isPrimeNumber(indexOfPrimeNumber)) {
    console.log("Prime numbers from 0 to 100 are: ", indexOfPrimeNumber);
  }
}

// 8. Use for loop to iterate from 0 to 100 and print the sum of all numbers.

let sumOfNumbers = 0;
for (let index = 0; index <= 100; index++) {
  sumOfNumbers += index;
}
console.log("Sum of all numbers from 0 to 100: ", sumOfNumbers);

// 9. Use for loop to iterate from 0 to 100 and print the sum of all evens and the sum of all odds.
let sumEvens = 0;
let sumOdds = 0;

for (let index = 0; index <= 100; index++) {
  if (index % 2 === 0) {
    sumEvens += index;
  } else {
    sumOdds += index;
  }
}
console.log("Sum of all even numbers from 0 to 100: ", sumEvens);
console.log("Sum of all odd numbers from 0 to 100: ", sumOdds);

// 10. Use for loop to iterate from 0 to 100 and print the sum of all evens and the sum of all odds. //O/P:   [2550, 2500]
let pushValues = [];

pushValues.push(sumEvens);
pushValues.push(sumOdds);

console.log("Values are: ", pushValues);
// 11. Develop a small script which generate array of 5 random numbers
const generateRandomNumbers = () => {
  const randomNumbers = [];
  for (let i = 0; i < 5; i++) {
    randomNumbers.push(Math.floor(Math.random() * 10));
  }
  return randomNumbers;
};

const randomNumbersArray = generateRandomNumbers();
console.log(randomNumbersArray);

// 12. Develop a small script which generate array of 5 random numbers and the numbers must be unique
let uniqueNumbers = [];
while (uniqueNumbers.length < 5) {
  const randomNumber = Math.floor(Math.random() * 100);
  if (!uniqueNumbers.includes(uniqueNumbers)) {
    uniqueNumbers.push(randomNumber);
  }
}
console.log("Unique random numbers are: ", uniqueNumbers);

// 13. Develop a small script which generate a six characters random id: //iuyt56
function getRandomId() {
  const chars =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  let result = "";
  for (let i = 0; i < 6; i++) {
    const rnd = Math.floor(Math.random() * chars.length);
    result += chars[rnd];
  }
  return result;
}

const randomId = getRandomId();
console.log(`Generated Random Id: ${randomId}`);

// 14. Develop a small script which generate any number of characters random id.
function getRandomString(length) {
  let resultOfRandom = "";
  const chars =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  for (let i = 0; i < length; i++) {
    const rnd = Math.floor(Math.random() * chars.length);
    resultOfRandom += chars.charAt(rnd);
  }
  return resultOfRandom;
}

const stringWithNumberCharacters = getRandomString(10);
const stringWithoutNumberCharacters = getRandomString(5);

console.log(
  `Random String with Number Characters Length: ${stringWithNumberCharacters.length}`
);

// 15. Write a script which generates a random hexadecimal number.
const hexDigits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C", "D", "E", "F"];
let hexNumber = "";
const numLength = Math.floor(Math.random() * 10);

for (let i = 0; i < numLength; i++) {
  hexNumber += hexDigits[Math.floor(Math.random() * 16)];
}

console.log("Hexadecimal number", hexNumber);

// 16. Using the above countries array, create the following new array.
// ["ALBANIA", "BOLIVIA", "CANADA", "DENMARK", "ETHIOPIA", "FINLAND", "GERMANY", "HUNGARY", "IRELAND", "JAPAN", "KENYA"]

const newCountriesArray = [];

for (const country of countries) {
  newCountriesArray.push(country.toUpperCase());
}

console.log(newCountriesArray);

// 17. Using the above countries array, create an array for countries length
// [7, 7, 6, 7, 8, 7, 7, 7, 7, 5, 5]
const countriesLength = [];
for (const country of countries) {
  countriesLength.push(country.length);
}
console.log(countriesLength);

// 18. Use the countries array to create the following array of arrays:
//   [
//   ['Albania', 'ALB', 7],
//   ['Bolivia', 'BOL', 7],
//   ['Canada', 'CAN', 6],
//   ['Denmark', 'DEN', 7],
//   ['Ethiopia', 'ETH', 8],
//   ['Finland', 'FIN', 7],
//   ['Germany', 'GER', 7],
//   ['Hungary', 'HUN', 7],
//   ['Ireland', 'IRE', 7],
//   ['Iceland', 'ICE', 7],
//   ['Japan', 'JAP', 5],
//   ['Kenya', 'KEN', 5]
// ]

const countriesArray = [
  "Albania",
  "Bolivia",
  "Canada",
  "Denmark",
  "Ethiopia",
  "Finland",
  "Germany",
  "Hungary",
  "Ireland",
  "Japan",
  "Kenya",
];
const countryCodesArray = [];

for (const country of countriesArray) {
  countryCodesArray.push([
    country,
    country.slice(0, 3).toUpperCase(),
    country.length,
  ]);
}

console.log(countryCodesArray);

// 19. In above countries array, check if there is a country or countries containing the word 'land'. If there are countries containing 'land', print it as array. If there is no country containing the word 'land', print 'All these countries are without land'.
// ['Finland','Ireland', 'Iceland']

const countriesWithLandArray = [];

for (const country of countriesArray) {
  if (country.includes("land")) countriesWithLandArray.push(country);
}

if (countriesWithLandArray.length) {
  console.log(countriesWithLandArray);
} else {
  console.log("All these countries are without land");
}

// 20. Using the above countries array, find the country containing the biggest number of characters.
let maxChars = "";
for (let i = 0; i < countries.length; i++) {
  if (countries[i].length > maxChars.length) {
    maxChars = countries[i];
  }
}
console.log(`The country with the most characters is ${maxChars}`);

// 21. Using the above countries array, find the country containing only 5 characters.
let fiveCharCountry = [];
for (let i = 0; i < countries.length; i++) {
  if (countries[i].length === 5) {
    fiveCharCountry.push(countries[i]);
  }
}
console.log("The countries with five characters are: ", fiveCharCountry);

// 22. Find the longest word in the webTechs array.
const webTechs = [
  "HTML",
  "CSS",
  "JavaScript",
  "React",
  "Redux",
  "Node",
  "MongoDB",
];

let longestWord = -1;
let longestTech = "";
for (tech of webTechs) {
  if (tech.length > longestWord) {
    longestWord = tech.length;
    longestTech = tech;
  }
}
console.log(longestTech);

// 23. Use the webTechs array to create the following array of arrays:
// [["HTML", 4], ["CSS", 3],["JavaScript", 10],["React", 5],["Redux", 5],["Node", 4],["MongoDB", 7]]
const codes = [];
for (tech of webTechs) {
  codes.push([tech, tech.length]);
}
console.log(codes);

// 24. An application created using MongoDB, Express, React and Node is called a MERN stack app. Create the acronym MERN by using the array mernStack
const mernStack = ["MongoDB", "Express", "React", "Node"];
let acronym = "";
for (mernTech of mernStack) {
  acronym += mernTech[0];
}
console.log(acronym);

// 25. Iterate through the array, ["HTML", "CSS", "JS", "React", "Redux", "Node", "Express", "MongoDB"] using a for loop or for of loop and print out the items.
const techStack = [
  "HTML",
  "CSS",
  "JS",
  "React",
  "Redux",
  "Node",
  "Express",
  "MongoDB",
];
for (const tech of techStack) {
  console.log("Iterating tech stack array: ", tech);
}

// 26. This is a fruit array , ['banana', 'orange', 'mango', 'lemon'] reverse the order using loop without using a reverse method.
const fruitArray = ["banana", "orange", "mango", "lemon"];
const reverseFruits = [];

for (let i = fruitArray.length - 1; i >= 0; i--) {
  reverseFruits.push(fruitArray[i]);
}
console.log("The reversed fruit array is follows:", reverseFruits);

// 27. Print all the elements of array as shown below.
const fullStack = [
  ["HTML", "CSS", "JS", "React"],
  ["Node", "Express", "MongoDB"],
];

// OUTPUT:

//   HTML
//   CSS
//   JS
//   REACT
//   NODE
//   EXPRESS
//   MONGODB

for (const stack of fullStack) {
  for (const tech of stack) {
    console.log(tech);
  }
}
