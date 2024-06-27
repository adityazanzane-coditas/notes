// Day - 9 Assignment

// 1. Check if type of '70' is equal to 70
const number = 70;
console.log(typeof "70" === number); //false

// 2.Check if parseInt('8.8') is equal to 9
console.log(parseInt("8.8") === 9); //false

// 3. Boolean value is either true or false
// 3a. Write five JavaScript statement which provide falsy value.
const falsyValues = [false, 0, -0, "", null];
console.log(falsyValues);

const employeeId = 0;
const employeeName = "Aditya";
const employeePayroll = null;
const employeeIsMarried = false;
const employeeDept = -0;

console.log(employeeId);
console.log(employeeName);
console.log(employeePayroll);
console.log(employeeIsMarried);
console.log(employeeDept);

// 3b. Write five JavaScript statement which provide truthy  value.
const truthyValues = [true, 1, {}, "hello", []];
console.log(truthyValues);

const eltp_subjects = 4;
const eltp_grades = "Good";
const internIsPassed = true;
const internAverage = [7, 6, 6, 7, 7];
const internDetails = {
  internFirstName: "Aditya",
  internLastName: "Zanzane",
};

// 4. Figure out the result of the following comparison expression first without using console.log(). After you decide the result confirm it using console.log()
// 5 > 4
console.log(5 > 4); //true

// 4 >= 3
console.log(4 >= 3); //true

// 4 < 3
console.log(4 < 3); //false

// 4 <= 3
console.log(4 <= 3); //false

// 5 == 5
console.log(5 == 5); //true

// 9 === 9
console.log(9 === 9); //true

// 9 == '9'
console.log(9 == "9"); //true

// 8 === '8'
console.log(8 === "8"); //false

// 4 != 4
console.log(4 != 4); //false

// 4 !== 4
console.log(4 !== 4); //false

// 4 != '4'
console.log(4 != "4"); //false

// 4 != '4'
console.log(4 != "4"); //false

// 4 !== '4'
console.log(4 !== "4"); //true

// n. Find the length of python and jargon and make a falsy comparison statement.
const pythonLength = "python".length;
const jargonLength = "jargon".length;
console.log(pythonLength < jargonLength); //false

// 5. Figure out the result of the following expressions first without using console.log(). After you decide the result confirm it by using console.log()
// 4 > 3 && 10 < 12
console.log(4 > 3 && 10 < 12); //true

// 4 > 3 && 10 > 12
console.log(4 > 3 && 10 > 12); //false

// 4 > 3 || 10 < 12
console.log(4 > 3 || 10 < 12); //true

// 4 > 3 || 10 > 12
console.log(4 > 3 || 10 > 12); //true

// !(4 > 3)
console.log(!(4 > 3)); //false

// !(4 < 3)
console.log(!(4 < 3)); //true

// !(false)
console.log(!false); //true

// !(4 > 3 && 10 < 12)
console.log(!(4 > 3 && 10 < 12)); //false

// !(4 > 3 && 10 > 12)
console.log(!(4 > 3 && 10 > 12)); //true

// !(4 === '4')
console.log(!(4 === "4")); //true

// There is no 'on' in both dragon and python
const hasOnInPython = "python".includes("on");
const hasOnInDragon = "dragon".includes("on");
console.log(hasOnInDragon && hasOnInPython); //true

//Output
// false
// false
// [ false, 0, -0, '', null ]
// 0
// Aditya
// null
// false
// -0
// [ true, 1, {}, 'hello', [] ]
// true
// true
// false
// false
// true
// true
// true
// false
// false
// false
// false
// false
// true
// false
// true
// false
// true
// true
// false
// true
// true
// false
// true
// true
// true
