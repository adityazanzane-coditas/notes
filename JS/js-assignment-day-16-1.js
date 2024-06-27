// DAY - 16 Assignment  (Higher Order Functions)
const countries = ["Finland", "Sweden", "Denmark", "Norway", "IceLand"];
const names = ["Asabeneh", "Mathias", "Elias", "Brook"];
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const products = [
  { product: "banana", price: 3 },
  { product: "mango", price: 6 },
  { product: "potato", price: " " },
  { product: "avocado", price: 8 },
  { product: "coffee", price: 10 },
  { product: "tea", price: "" },
];

// Explain the difference between forEach, map, filter, and reduce.
//foreach
function customForEach(array, action) {
  for (let iteration = 0; iteration < array.length; iteration++) {
    action(array[i]);
  }
}

//map
function customMap(array, mapAction) {
  const mappedArr = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    mappedArr.push(mapAction(array[i]));
  }
  return mappedArr;
}

//filter
function customFilter(array, predicate) {
  const filteredArr = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (predicate(array[i])) {
      filteredArr.push(array[i]);
    }
  }
  return filteredArr;
}

//reduce
function customReduce(array, reducer, initialValue) {
  let accumulator = initialValue !== undefined ? initialValue : array[0];
  const startIndex = initialValue !== undefined ? 0 : 1;

  for (let iteration = startIndex; iteration < array.length; iteration++) {
    accumulator = reducer(accumulator, array[i]);
  }

  return accumulator;
}

// Define a callback function before you use it in forEach, map, filter or reduce.
const callBack = (list) => console.log(list);

// Use forEach to console.log each country in the countries array.
countries.forEach(callBack);

// Use forEach to console.log each name in the names array.
names.forEach(callBack);

// Use forEach to console.log each number in the numbers array.
numbers.forEach(callBack);

// Use map to create a new array by changing each country to uppercase in the countries array.
function mapUpperCase(array) {
  const newArray = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    newArray.push(array[iteration].toUpperCase());
  }
  return newArray;
}

const countriesToUpperCase = mapUpperCase(countries);
console.log(countriesToUpperCase);

// Use map to create an array of countries length from countries array.
function mapCountryLength(array) {
  const newArray = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    newArray.push(array[iteration].length);
  }
  return newArray;
}

const countriesLength = mapCountryLength(countries);
console.log(countriesLength);

// Use map to create a new array by changing each number to square in the numbers array
function mapSquareNumber(array) {
  const newArray = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    newArray.push(array[iteration] * array[iteration]);
  }
  return newArray;
}

const squareNumber = mapSquareNumber(numbers);
console.log(squareNumber);

// Use map to change to each name to uppercase in the names array
function mapUpperCaseNames(array) {
  const newArray = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    newArray.push(array[iteration].toUpperCase());
  }
  return newArray;
}

const namesToUpperCase = mapUpperCaseNames(names);
console.log(namesToUpperCase);

// Use map to map the products array to its corresponding prices.
function mapProducts(products) {
  const newArray = [];
  for (let iteration = 0; iteration < products.length; iteration++) {
    newArray.push(products[iteration]);
  }
  return newArray;
}

const productsArray = mapProducts(products);
console.log(productsArray);

// Use filter to filter out countries containing land.
function filterCountries(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (array[iteration].includes("land")) {
      result.push(array[iteration]);
    }
  }
  return result;
}

console.log(filterCountries(countries));

// Use filter to filter out countries having six character.
function filterSixCharacter(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (array[iteration].length === 6) {
      result.push(array[iteration]);
    }
  }
  return result;
}

console.log(filterSixCharacter(countries));

// Use filter to filter out countries containing six letters and more in the country array.
function filterSixLetters(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (array[iteration].length >= 6) {
      result.push(array[iteration]);
    }
  }
  return result;
}

console.log(filterSixLetters(countries));

// Use filter to filter out country start with 'E';
function filterCountryWithE(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (array[iteration][0] !== "E") {
      result.push(array[iteration]);
    }
  }
  return result;
}

console.log(filterCountryWithE(countries));

// Use filter to filter out only prices with values.
function filterPrices(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (
      typeof array[iteration].price === "number" &&
      !isNaN(array[iteration].price)
    ) {
      result.push(array[iteration].price);
    }
  }
  return result;
}

console.log(filterPrices(products));

// Declare a function called getStringLists which takes an array as a parameter and then returns an array only with string items.
function getStringLists(array) {
  const result = [];
  for (let iteration = 0; iteration < array.length; iteration++) {
    if (typeof array[iteration] === "string") {
      result.push(array[iteration]);
    }
  }
  return result;
}

console.log(getStringLists(["a", 1, "d", 2, "i"]));

// Use reduce to sum all the numbers in the numbers array.
function sumNumbers(array) {
  let sum = 0;
  for (let iteration = 0; iteration < array.length; iteration++) {
    sum += array[iteration];
  }
  return sum;
}

console.log(sumNumbers(numbers));

// Use reduce to concatenate all the countries and to produce this sentence: Estonia, Finland, Sweden, Denmark, Norway, and IceLand are north European countries
function concatenateCountries(countries) {
  let sentence = "";
  for (let iteration = 0; iteration < countries.length; iteration++) {
    sentence += countries[iteration];
    if (iteration < countries.length - 1) {
      sentence += ", ";
    }
  }
  sentence += " are north European countries.";
  return sentence;
}

console.log(concatenateCountries(countries));

// Explain the difference between some and every
//some
const isEvenNumber = numbers.some((num) => num % 2 === 0);
console.log(isEvenNumber); //return true as some numbers are even.

const isOddNumber = numbers.every((num) => num % 2 != 0);
console.log(isOddNumber); //returns false as it checks for all numbers if any number is even it return false.

// Use some to check if some names' length greater than seven in names array
function greaterThanSevenNames(names) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (names[iteration].length >= 7) {
      return true;
    }
  }
  return false;
}

console.log(greaterThanSevenNames(names));

// Use every to check if all the countries contain the word land
function checkWordLand(countries) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (!countries[iteration].includes() === "land") {
      return false;
    }
  }
  return true;
}

console.log(checkWordLand(countries));

// Explain the difference between find and findIndex.

const numbersArray = [1, 2, 3, 4, 5];

function customFind(array, callback) {
  for (let i = 0; i < array.length; i++) {
    if (callback(array[i], i, array)) {
      return array[i];
    }
  }
  return undefined;
}

function customFindIndex(array, callback) {
  for (let i = 0; i < array.length; i++) {
    if (callback(array[i], i, array)) {
      return i;
    }
  }
  return -1;
}

const foundNumber = customFind(numbersArray, (num) => num > 3);
console.log(foundNumber);

const foundIndex = customFindIndex(numbersArray, (num) => num > 3);
console.log(foundIndex);

// Use find to find the first country containing only six letters in the countries array
function countryWithSixLetters(countries) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (countries[iteration].length === 6) {
      return countries[iteration];
    }
  }
  return null;
}

console.log(countryWithSixLetters(countries));

// Use findIndex to find the position of the first country containing only six letters in the countries array
function indexCountryWithSixLetters(countries) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (countries[iteration].length === 6) {
      return iteration;
    }
  }
  return -1;
}

console.log(indexCountryWithSixLetters(countries));

// Use findIndex to find the position of Norway if it doesn't exist in the array you will get -1.
function positionOfNorway(countries) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (countries[iteration] === "Norway") {
      return iteration;
    }
  }
  return -1;
}

console.log(positionOfNorway(countries));

// Use findIndex to find the position of Russia if it doesn't exist in the array you will get -1.
function positionOfRussia(countries) {
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (countries[iteration] === "Russia") {
      return iteration;
    }
  }
  return -1;
}

console.log(positionOfRussia(countries));

// Find the total price of products by chaining two or more array iterators(eg. arr.map(callback).filter(callback).reduce(callback))
function totalPrice(products) {
  let total = products
    .map((product) => product.price)
    .filter((price) => typeof price === "number" && !isNaN(price))
    .reduce((accumulator, currentValue) => accumulator + currentValue, 0);
  return total;
}

console.log(totalPrice(products));

// Find the sum of price of products using only reduce reduce(callback))
function sumOfProducts(products) {
  return products.reduce((accumulator, currentValue) => {
    if (typeof currentValue.price === "number" && !isNaN(currentValue.price)) {
      return accumulator + currentValue.price;
    } else {
      return accumulator;
    }
  }, 0);
}

console.log(sumOfProducts(products));

// Declare a function called categorizeCountries which returns an array of countries which have some common pattern(you find the countries array in this repository as countries.js(eg 'land', 'ia', 'island','stan')).
function categorizeCountries(countries, pattern) {
  const newArrayOfCountries = [];
  for (let iteration = 0; iteration < countries.length; iteration++) {
    if (countries[iteration].includes(pattern)) {
      newArrayOfCountries.push(countries[iteration]);
    }
  }
  return newArrayOfCountries;
}
const countriesWithPattern = categorizeCountries(countries, "land");
console.log(countriesWithPattern);

// Create a function which return an array of objects, which is the letter and the number of times the letter use to start with a name of a country.
function arrayOfObjects(countries) {
  const countLetter = {};
  for (let iteration = 0; iteration < countries.length; iteration++) {
    const firstLetter = countries[iteration][0].toLowerCase();
    if (countLetter[firstLetter]) {
      countLetter[firstLetter]++;
    } else {
      countLetter[firstLetter] = 1;
    }
  }
  const result = [];
  for (const letter in countLetter) {
    result.push({ letter: letter.toUpperCase(), count: countLetter[letter] });
  }
  return result;
}

const firstLetterCount = arrayOfObjects(countries);
console.log(firstLetterCount);

// Declare a getFirstTenCountries function and return an array of ten countries. Use different functional programming to work on the countries.js array
function getFirstTenCountries(countries) {
  return countries.slice(0, 10);
}
console.log(getFirstTenCountries(countries));

// Declare a getLastTenCountries function which which returns the last ten countries in the countries array.
function getLastTenCountries(countries) {
  return countries.slice(-10);
}
console.log(getLastTenCountries(countries));

// Find out which letter is used many times as initial for a country name from the countries array (eg. Finland, Fiji, France etc)
function frequentLetterUsed(countries) {
  const letterUsed = {};
  for (let iteration = 0; iteration < countries.length; iteration++) {
    const firstLetter = countries[iteration][0].toLowerCase();
    if (letterUsed[firstLetter]) {
      letterUsed[firstLetter]++;
    } else {
      letterUsed[firstLetter] = 1;
    }
  }
  let frequentLetter = "";
  let maxCount = 0;
  for (const letter in letterUsed) {
    if (letterUsed[letter] > maxCount) {
      frequentLetter = letter.toUpperCase();
      maxCount = letterUsed[letter];
    }
  }
  return frequentLetter;
}

console.log(frequentLetterUsed(countries));

// Use the countries information, in the data folder. Sort countries by name, by capital, by population

// 35. Find the 10 most spoken languages:
// // Your output should look like this
// console.log(mostSpokenLanguages(countries, 10))
// [
// {country: 'English',count:91},
// {country: 'French',count:45},
// {country: 'Arabic',count:25},
// {country: 'Spanish',count:24},
// {country:'Russian',count:9},
// {country:'Portuguese', count:9},
// {country:'Dutch',count:8},
// {country:'German',count:7},
// {country:'Chinese',count:5},
// {country:'Swahili',count:4}
// ]

// // Your output should look like this
// console.log(mostSpokenLanguages(countries, 3))
// [
// {country: 'English',count: 91},
// {country: 'French',count: 45},
// {country: 'Arabic',count: 25},
// ]```
