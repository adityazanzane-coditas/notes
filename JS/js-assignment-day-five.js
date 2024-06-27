// DAY-5 Assignment

// Declare a variable and assign a value 'Easy JavaScript Assignments'.
const assignmentName='Easy JavaScript Assignments';

// Print the length of the string.
console.log('Easy JavaScript Assignments'.length);

// Change all the string characters to capital letters using toUpperCase() method
console.log('Easy JavaScript Assignments'.toUpperCase());

// Change all the string characters to lowercase letters using toLowerCase() method
console.log('Easy JavaScript Assignments'.toLowerCase());

// Slice out the first word of the string using substr() and substring() method
console.log('Easy JavaScript Assignments'.substr(1));
console.log('Easy JavaScript Assignments'.substring(1));

// Slice out the phrase JavaScript Assignments from 'Easy JavaScript Assignments'..
console.log('Easy JavaScript Assignments'.slice(5, 26));

// Check if the string contains a word Script using includes() method
console.log('Easy JavaScript Assignments'.includes("Script"));

// Split the string into an array using split() method
console.log('Easy JavaScript Assignments'.split(""));

// Split the string 'Easy JavaScript Assignments' at the space using split() method
console.log('Easy JavaScript Assignments'.split(" "));

// 'ELTP, BATCH, THREE' split the string at the comma and change it to an array.
const batchName='ELTP,BATCH,THREE';
console.log(batchName.split(","));

// Change 'Easy JavaScript Assignments' to 'Easy Python Assignments' using replace() method.
console.log('Easy JavaScript Assignments'.replace("JavaScript", "Python"));

// What is character at index 20 in 'Easy JavaScript Assignments' string? Use charAt() method.
console.log('Easy JavaScript Assignments'.charAt(20));

// What is the character code of J in 'Easy JavaScript Assignments' string using charCodeAt()
console.log('Easy JavaScript Assignments'.charCodeAt('J'));

// Use indexOf to determine the position of the first occurrence of 'a' in 'Easy JavaScript Assignments'
console.log('Easy JavaScript Assignments'.indexOf('a'));

// Use lastIndexOf to determine the position of the last occurrence of 'a' in 'Easy JavaScript Assignments'.
console.log('Easy JavaScript Assignments'.lastIndexOf('a'));

// Use indexOf to find the position of the first occurrence of the word 'Easy' in the following sentence:'Easy JavaScript Assignments, Easy Easy'
const sentence1='Easy JavaScript Assignments, Easy Easy';
console.log(sentence1.indexOf('Easy'));

// Use lastIndexOf to find the position of the last occurrence of the word 'Easy' in the following sentence:'Easy JavaScript Assignments, Easy Easy'
console.log(sentence1.lastIndexOf('Easy'));

// Use search to find the position of the first occurrence of the word 'Easy' in the following sentence: 'Easy JavaScript Assignments, Easy Easy'
console.log(sentence1.search('Easy'));

// Use trim() to remove any trailing whitespace at the beginning and the end of a string. '       Easy JavaScript Assignments, Easy Easy             '
const sentence2='       Easy JavaScript Assignments, Easy Easy             ';
console.log(sentence2.trim());

// Use startsWith() method with the string 'Easy JavaScript Assignments' and make the result true
console.log('Easy JavaScript Assignments'.startsWith('E'));

// Use endsWith() method with the string 'Easy JavaScript Assignments' and make the result true
console.log('Easy JavaScript Assignments'.endsWith('s'));

// Use match() method to find all the a’s in 'Easy JavaScript Assignments'
console.log('Easy JavaScript Assignments'.match(/a/g).length);

// Use concat() and merge 'Easy' and 'JavaScript' to a single string.
const first_word='Easy';
const second_word='JavaScript';
console.log(first_word.concat(second_word));

// Use repeat() method to print 'Easy JavaScript' 3 times.
console.log('Easy JavaScript\n'.repeat(3));

// 'Javascript is Easy, too Easy, too Easy, Easy to learn' Count the number of word 'Easy' in this sentence.
console.log('Javascript is Easy, too Easy, too Easy, Easy to learn'.split('Easy').length-1);

// Use match() to count the number of all 'Easy' in the following sentence:'Javascript is Easy, too Easy, too Easy, Easy to learn'
console.log(('Javascript is Easy, too Easy, too Easy, Easy to learn'.match(/Easy/g)).length);

// Clean the following text and find the most frequent word (hint, use replace and regular expressions).
//     const sentence = '%I $am@% a %softwa@r%e %e@ngineer, &and& %java@sc@ript% is Ea%s#y;
const sentence = '%I $am@% a %softwa@r%e %e@ngineer, &and& %java@sc@ript% is Ea%s#y;'
const result = sentence.replace(/[^a-zA-Z0-9\s]/g,'');

console.log(result); 

// 28. Calculate the total annual income of the person by extracting the numbers from the following text. 
//'I earn 5000 euro from salary per month, 10000 euro annual bonus, 15000 euro from freelancing, and 50000 euro from trading'
const text = 'I earn 5000 euro from salary per month, 10000 euro annual bonus, 15000 euro from freelancing, and 50000 euro from trading';
const arr  = text.match(/\d+/g);
const totalAnnualIncome = (+arr[0] + +arr[2]) + +arr[1] + +arr[3];

console.log(totalAnnualIncome);

// Output:-
// coditas@Coditass-MacBook-Pro ELTP-JS-Aditya % node js-assignment-day-five.js                                                           
// 27
// EASY JAVASCRIPT ASSIGNMENTS
// easy javascript assignments
// asy JavaScript Assignments
// asy JavaScript Assignments
// JavaScript Assignment
// true
// [
//   'E', 'a', 's', 'y', ' ', 'J',
//   'a', 'v', 'a', 'S', 'c', 'r',
//   'i', 'p', 't', ' ', 'A', 's',
//   's', 'i', 'g', 'n', 'm', 'e',
//   'n', 't', 's'
// ]
// [ 'Easy', 'JavaScript', 'Assignments' ]
// [ 'ELTP', 'BATCH', 'THREE' ]
// Easy Python Assignments
// g
// 69
// 1
// 8
// 0
// 34
// 0
// Easy JavaScript Assignments, Easy Easy
// true
// true
// 3
// EasyJavaScript
// Easy JavaScript
// Easy JavaScript
// Easy JavaScript

// 4
// 4
// I am a software engineer and javascript is Easy
// 80000