// DAY 15 Assignment (FUNCTIONS)
// An area of a rectangle is calculated as follows: area = length x width. Write a function which calculates areaOfRectangle.

const areaOfRectangle = (length, width) => length * width;
console.log(areaOfRectangle(10, 12));

// Write a function called checkSeason, it takes a month parameter and returns the season:Autumn, Winter, Spring or Summer.

function checkSeason(month) {
  let season;
  if (month == 12 || month == 1 || month == 2) {
    season = "Winter";
  } else if (month == 3 || month == 4 || month == 5) {
    season = "Spring";
  } else if (month == 6 || month == 7 || month == 8) {
    season = "Summer";
  } else {
    season = "Autumn";
  }
  return season;
}
console.log(checkSeason(3));

// Write a function findMax that takes three arguments and returns their maximum with out using Math.max method.
// console.log(findMax(0, 10, 5))
// 10
// console.log(findMax(0, -10, -2))
// 0

const findMax = (number1, number2, number3) => {
  if (number1 > number2 && number1 > number3) return number1;
  else if (number2 > number1 && number2 > number3) return number2;
  else return number3;
};
console.log(findMax(0, 10, 5));
// 10
console.log(findMax(0, -10, -2));
// 0

// 4. Declare a function name swapValues. This function swaps value of x to y.
const swapValues = (x, y) => {
  let temp = x;
  x = y;
  y = temp;
  console.log(x, y);
};

console.log(swapValues(3, 5)); // [5, 3]

// 5. Write a function generateColors which can generate any number of hexa or rgb colors.

const generateColors = (type, count) => {
  const colorCodes = [];
  if (type === "hexa") {
    const hexLength = 6;
    const hexCharacters = "0123456789abcdef";
    while (colorCodes.length < count) {
      let colorCode = "#";
      while (colorCode.length < hexLength) {
        colorCode +=
          hexCharacters[Math.round(Math.random() * hexCharacters.length)];
      }
      colorCodes.push(colorCode);
    }
    return colorCodes;
  }
  while (colorCodes.length < count) {
    const red = Math.ceil(Math.random() * 255),
      blue = Math.ceil(Math.random() * 255),
      green = Math.ceil(Math.random() * 255);
    const rgbColorCode = `rgb(${red}, ${green}, ${blue})`;
    colorCodes.push(rgbColorCode);
  }
  return colorCodes;
};
console.log(generateColors("hexa", 3)); // ['#a3e12f', '#03ed55', '#eb3d2b']
console.log(generateColors("hexa", 1)); // '#b334ef'
console.log(generateColors("rgb", 3)); // ['rgb(5, 55, 175)', 'rgb(50, 105, 100)', 'rgb(15, 26, 80)']
console.log(generateColors("rgb", 1)); // 'rgb(33,79, 176)'

// 6. Write a function called modifyArray takes array as parameter and modifies the fifth item of the array and return the array. If the array length is less than five it return 'item not found'.
// console.log(modifyArray(['Avocado', 'Tomato', 'Potato','Mango', 'Lemon','Carrot']);
// //['Avocado', 'Tomato', 'Potato','Mango', 'LEMON', 'Carrot']
function modifyArray(arr) {
  for (let i = 0; i < arr.length; i++) {
    if (arr[i].toLowerCase() === "lemon") {
      arr[i] = "LEMON";
    }
  }
  return arr;
}

// 7. Write a functions which checks if all items are unique in the array.
const isUnique = (numbers) => {
  const newNumbers = [];
  for (number of numbers) {
    if (newNumbers.includes(number)) return false;
    else newNumbers.push(number);
  }
  return true;
};
console.log(isUnique([3, 6, 9, 3]));

// 8. Write a function which returns array of seven random numbers in a range of 0-9. All the numbers must be unique.
// sevenRandomNumbers()
// [(1, 4, 5, 7, 9, 8, 0)]
function sevenRandomNumbers() {
  let arrayOfNumbers = [];
  while (arrayOfNumbers.length < 7) {
    let randomNumber = Math.floor(Math.random() * 10);
    if (arrayOfNumbers.indexOf(randomNumber) === -1)
      arrayOfNumbers.push(randomNumber);
  }
  return arrayOfNumbers;
}
console.log(sevenRandomNumbers());
