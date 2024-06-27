// Day-11 Assignment

// Declare an empty array;
const emptyArray = [];
console.log(emptyArray);

// Declare an array with more than 5 number of elements
const arrayWithElements = [1, 2, 3, 4, 5, 6];
console.log(arrayWithElements);

// Find the length of your array
const arrayLength = arrayWithElements.length;

// Get the first item, the middle item and the last item of the array
const firstItem = arrayWithElements[0];
const middleItem = arrayWithElements[Math.floor(arrayLength / 2)];
const lastItem = arrayWithElements[arrayLength - 1];

console.log("First Item", firstItem);
console.log("Middle Item", middleItem);
console.log("Last Item", lastItem);

// Declare an array called mixedDataTypes, put different data types in the array and find the length of the array. The array size should be greater than 5
const mixedDataTypes = [1, "Aditya", true, null, { key: "value" }];
console.log("Mixed data type array length:", mixedDataTypes);

// Declare an array variable name itCompanies and assign initial values Coditas, Google, Microsoft, Apple, IBM, Oracle and Amazon
const itCompanies = [
  "Coditas",
  "Google",
  "Microsoft",
  "Apple",
  "IBM",
  "Oracle",
  "Amazon",
];

// Print the array using console.log()
console.log(itCompanies);

// Print the number of companies in the array
console.log("Number of ITCompanies:", itCompanies.length);

// Print the first company, middle and last company
console.log("First Company:", itCompanies[0]);
console.log("Middle Company:", itCompanies[Math.floor(itCompanies.length / 2)]);
console.log("Last Company:", itCompanies[itCompanies.length - 1]);
// Print out each company

// Change each company name to uppercase one by one and print them out
const uppercaseCompanies = itCompanies.map((company) => company.toUpperCase());
console.log("Company names in upper-case:", uppercaseCompanies);

// Print the array like as a sentence: Coditas, Google, Microsoft, Apple, IBM,Oracle and Amazon are big IT companies.
const sentence = itCompanies.join(", ") + " are big IT companies";
console.log(sentence);

// Check if a certain company exists in the itCompanies array. If it exist return the company else return a company is not found
const searchCompany = "Coditas";
if (itCompanies.includes(searchCompany)) {
  console.log(`${searchCompany} exists in the itCompanies array`);
} else {
  console.log(`${searchCompany} company is not found`);
}

// Filter out companies which have more than one 'o' without the filter method
let filterCompanies = [];
for (let word = 0; word < itCompanies.length; word++) {
  let wordCount = 0;
  for (let character = 0; character < itCompanies[word].length; character++) {
    if (itCompanies[word][character].toLowerCase() === "o") {
      wordCount++;
    }
  }
  if (wordCount > 1) {
    filterCompanies.push(itCompanies[word]);
  }
}
console.log("Without o company", filterCompanies);

// Sort the array using sort() method
console.log("Sorted Company names: ", itCompanies.sort());

// Sort the array by country name length without sort;
console.log(
  "Sorted Company names without sort method:",
  itCompanies.sort((myFunction = (a, b) => a.length - b.length))
);

// Reverse the array using reverse() method
console.log("Sorted Company names: ", itCompanies.reverse());

// Slice out the first 3 companies from the array
const firstThreeCompanies = itCompanies.slice(0, 3);
console.log("The first 3 companies are ", firstThreeCompanies);

// Slice out the last 3 companies from the array
const lastThreeCompanies = itCompanies.slice(-3);
console.log("The last 3 companies are ", lastThreeCompanies);

// Slice out the middle IT company or companies from the array
const middleITCompany = itCompanies.slice(1, -1);
console.log("The middle IT company is ", middleITCompany);

// Remove the first IT company from the array
console.log("Array after removing first IT Company: ", itCompanies.shift());

// Remove the middle IT company or companies from the array
console.log(
  "Array after removing middle IT Company: ",
  itCompanies.splice(1, itCompanies.length - 2)
);

// Remove the last IT company from the array
console.log("Array after removing last IT Company: ", itCompanies.pop());

// Remove all IT companies
console.log(
  "Array after removing all IT Company: ",
  itCompanies.splice(0, itCompanies.length - 1)
);

// 24. First remove all the punctuations and change the string to array and count the number of words in the array, dont use regex
// let text =
// 'I love teaching and empowering people. I teach HTML, CSS, JS, Node, Python, dJango'
let text =
  "I love teaching and empowering people. I teach HTML, CSS, JS, Node, Python, dJango";
text = text.replaceAll(",", "");
text = text.replaceAll(".", "");
text = text.split(" ");
console.log(
  "Removing all the punctuations and changing the string",
  text.length
);

// 25. In the following shopping cart add, remove, edit items
// const shoppingCart = ['Milk', 'Coffee', 'Tea', 'Honey']
// add 'Rasmalai' in the beginning of your shopping cart if it has not been already added
// add Gulabjamun at the end of you shopping cart if it has not been already added
// remove 'Honey' if you are allergic to honey
// modify Tea to 'Green Tea'
const shoppingCart = ["Milk", "Coffee", "Tea", "Honey"];
shoppingCart.unshift("Rasmalai");
console.log(
  "Add 'Rasmalai' in the beginning of your shopping cart",
  shoppingCart
);
shoppingCart.push("Gulabjamun");
console.log("Add Gulabjamun at the end of you shopping cart", shoppingCart);
const allergicToHoney = true;
if (allergicToHoney) {
  const honeyIndex = shoppingCart.indexOf("Honey");
  if (honeyIndex !== -1) {
    shoppingCart[honeyIndex] = "Green Tea";
  }
}
console.log(
  "Adding Rasmalai, Gulabjamun and removing and modifying honey items to shoppingcart: ",
  shoppingCart
);

// 26. In countries array check if 'India' exists in the array if it exists print 'INDIA'. If it does not exist add to the countries list.
const countries = [
  "Albania",
  "Bolivia",
  "Canada",
  "Denmark",
  "Ethiopia",
  "Finland",
  "India",
  "Germany",
  "Hungary",
  "Ireland",
  "Japan",
  "Kenya",
];

const webTechs = [
  "HTML",
  "CSS",
  "JavaScript",
  "React",
  "Redux",
  "Node",
  "MongoDB",
];

if (countries.includes("India")) {
  console.log("INDIA");
} else {
  countries.push("India");
  console.log("Added India to the country list", countries);
}

// 27. In the webTechs array check if Sass exists in the array and if it exists print 'Sass is a CSS preprocess'. If it does not exist add Sass to the array and print the array.
if (webTechs.includes("Saas")) {
  console.log("Sass is a CSS preprocess");
} else {
  webTechs.push("Saas");
  console.log("Added saas to the webTech list", webTechs);
}
// 28. Concatenate the following two variables and store it in a fullStack variable.
// const frontEnd = ['HTML', 'CSS', 'JS', 'React', 'Redux']
// const backEnd = ['Node','Express', 'MongoDB']

// console.log(fullStack)
const frontEnd = ["HTML", "CSS", "JS", "React", "Redux"];
const backEnd = ["Node", "Express", "MongoDB"];

console.log(frontEnd.concat(backEnd));

// 29. The following is an array of 10 students ages:
// const ages = [19, 22, 19, 24, 20, 25, 26, 24, 25, 24]
// Sort the array and find the min and max age
// Find the median age(one middle item or two middle items divided by two)
// Find the average age(all items divided by number of items)
// Find the range of the ages(max minus min)
// Compare the value of (min - average) and (max - average), use abs() method 1.Slice the first ten countries from the countries array
const ages = [19, 22, 19, 24, 20, 25, 26, 24, 25, 24];
console.log(ages.sort());
const minAge = ages[0];
const maxAge = ages[ages.length - 1];
const medianAge =
  ages.length % 2 === 0
    ? (ages[ages.length / 2 - 1] + ages[ages.length / 2]) / 2
    : ages[Math.floor(ages.length / 2)];
const totalAges = ages.reduce((sum, age) => sum + age, 0);
const averageAge = totalAges / ages.length;
const ageRange = maxAge - minAge;
const diffMinAvg = Math.abs(minAge - averageAge);
const diffMaxAvg = Math.abs(maxAge - averageAge);

console.log("Min Age", minAge);
console.log("Max Age", maxAge);
console.log("Median Age", medianAge);
console.log("Average age", averageAge);
console.log("Age Range", ageRange);
console.log("Difference minage-average age", diffMinAvg);
console.log("Difference maxage-average age", diffMaxAvg);

// 30. Find the middle countries in the countries array.
let middleCountriesName;
const middleCountries = Math.floor(countries.length / 2);
if (countries.length % 2 === 0) {
  middleCountriesName = [
    countries[middleCountries - 1],
    countries[middleCountries],
  ];
} else {
  middleCountriesName = [countries[middleCountries]];
}
console.log(middleCountriesName);

// 31. Divide the countries array into two equal arrays if it is even. If countries array is not even , one more country for the first half
// ARRAYS:
// const countries = [
//   'Albania',
//   'Bolivia',
//   'Canada',
//   'Denmark',
//   'Ethiopia',
//   'Finland',
//   'India',
//   'Germany',
//   'Hungary',
//   'Ireland',
//   'Japan',
//   'Kenya'
// ]

// const webTechs = [
//   'HTML',
//   'CSS',
//   'JavaScript',
//   'React',
//   'Redux',
//   'Node',
//   'MongoDB'
// ]

let firstHalfCountries;
let secondHalfCountries;
if (!(countries.length % 2 === 0)) {
  firstHalfCountries = countries.slice(0, middleCountries);
  secondHalfCountries = countries.slice(middleCountries);
} else {
  firstHalfCountries = countries.slice(0, middleCountries + 1);
  secondHalfCountries = countries.slice(middleCountries + 1);
}
console.log(firstHalfCountries);
console.log(secondHalfCountries);

// //Output
// coditas@Coditass-MacBook-Pro ELTP-JS-Aditya % node js-assignment-day-eleven.js
// []
// [ 1, 2, 3, 4, 5, 6 ]
// First Item 1
// Middle Item 4
// Last Item 6
// Mixed data type array length: [ 1, 'Aditya', true, null, { key: 'value' } ]
// [
//   'Coditas',
//   'Google',
//   'Microsoft',
//   'Apple',
//   'IBM',
//   'Oracle',
//   'Amazon'
// ]
// Number of ITCompanies: 7
// First Company: Coditas
// Middle Company: Apple
// Last Company: Amazon
// Company names in upper-case: [
//   'CODITAS',
//   'GOOGLE',
//   'MICROSOFT',
//   'APPLE',
//   'IBM',
//   'ORACLE',
//   'AMAZON'
// ]
// Coditas, Google, Microsoft, Apple, IBM, Oracle, Amazon are big IT companies
// Coditas exists in the itCompanies array
// Without o company [ 'Google', 'Microsoft' ]
// Sorted Company names:  [
//   'Amazon',
//   'Apple',
//   'Coditas',
//   'Google',
//   'IBM',
//   'Microsoft',
//   'Oracle'
// ]
// Sorted Company names without sort method: [
//   'IBM',
//   'Apple',
//   'Amazon',
//   'Google',
//   'Oracle',
//   'Coditas',
//   'Microsoft'
// ]
// Sorted Company names:  [
//   'Microsoft',
//   'Coditas',
//   'Oracle',
//   'Google',
//   'Amazon',
//   'Apple',
//   'IBM'
// ]
// The first 3 companies are  [ 'Microsoft', 'Coditas', 'Oracle' ]
// The last 3 companies are  [ 'Amazon', 'Apple', 'IBM' ]
// The middle IT company is  [ 'Coditas', 'Oracle', 'Google', 'Amazon', 'Apple' ]
// Array after removing first IT Company:  Microsoft
// Array after removing middle IT Company:  [ 'Oracle', 'Google', 'Amazon', 'Apple' ]
// Array after removing last IT Company:  IBM
// Array after removing all IT Company:  []
// Removing all the punctuations and changing the string 14
// Add 'Rasmalai' in the beginning of your shopping cart [ 'Rasmalai', 'Milk', 'Coffee', 'Tea', 'Honey' ]
// Add Gulabjamun at the end of you shopping cart [ 'Rasmalai', 'Milk', 'Coffee', 'Tea', 'Honey', 'Gulabjamun' ]
// Adding Rasmalai, Gulabjamun and removing and modifying honey items to shoppingcart:  [ 'Rasmalai', 'Milk', 'Coffee', 'Tea', 'Green Tea', 'Gulabjamun' ]
// INDIA
// Added saas to the webTech list [
//   'HTML',       'CSS',
//   'JavaScript', 'React',
//   'Redux',      'Node',
//   'MongoDB',    'Saas'
// ]
// [
//   'HTML',    'CSS',
//   'JS',      'React',
//   'Redux',   'Node',
//   'Express', 'MongoDB'
// ]
// [
//   19, 19, 20, 22, 24,
//   24, 24, 25, 25, 26
// ]
// Min Age 19
// Max Age 26
// Median Age 24
// Average age 22.8
// Age Range 7
// Difference minage-average age 3.8000000000000007
// Difference maxage-average age 3.1999999999999993
// [ 'Finland', 'India' ]
// [
//   'Albania',
//   'Bolivia',
//   'Canada',
//   'Denmark',
//   'Ethiopia',
//   'Finland',
//   'India'
// ]
// [ 'Germany', 'Hungary', 'Ireland', 'Japan', 'Kenya' ]
