// Day-4 Assignment
// Check if typeof '10' is exactly equal to 10. If not make it exactly equal.
let number1='10';
console.log(typeof number1); //string
console.log(parseInt('10')); //10

// Check if parseFloat('9.8') is equal to 10 if not make it exactly equal with 10.
let number2='9.8';
console.log(parseFloat('9.8')); //gives 9.8
console.log(parseFloat('9.8')+0.2); //add 0.2 to 9.8 = 10

// Generate a random number between 0 and 100 inclusively.
let randomNumber1=Math.floor(Math.random()*10); //multiply by 10
console.log(randomNumber1);

// Generate a random number between 50 and 100 inclusively.
let randomNumber2=Math.floor(Math.random()*51+50); //multilpy by 51 and add 50 more to get more than 50
console.log(randomNumber2);

// 5. Use console.log() and escape characters to print the following pattern.
// 1 1 1 1 1
// 2 1 2 4 8
// 3 1 3 9 27
// 4 1 4 16 64
// 5 1 5 25 125
for (let index = 1; index <= 5; index++) {
    console.log(index + '\t' + index ** 0 + '\t' + index ** 1 + '\t' + index ** 2 + '\t' + index ** 3);
}

// 6. Enter base and height of the triangle and calculate an area of a triangle (area = 0.5 x b x h).

const base=10;
const height=2;
const area=0.5 * base * height; // formula:- area of triangle = base * height / 2
<<<<<<< HEAD
console.log(area);
=======
console.log(area);

//Output
// coditas@Coditass-MacBook-Pro ELTP-JS-Aditya % node js-assignment-day-four.js
// string
// 10
// 9.8
// 10
// 7
// 63
// 1       1       1       1       1
// 2       1       2       4       8
// 3       1       3       9       27
// 4       1       4       16      64
// 5       1       5       25      125
// 10
>>>>>>> 9b630c5e4b54bb100ce75bde0ff219d529fcd0a6
