//In-built
//map
const numbers = [1, 2, 3, 4, 5];
const doubled = numbers.map((value) => value * 2);
console.log(doubled);

//filter
const numbers2 = [2, 3, 6, 5, 10];
const evenNumbers = numbers2.filter((value) => value % 2 === 0);
console.log(evenNumbers);

//reduce
const number3 = [12, 13, 14, 15, 16];
const sum = number3.reduce(
  (accumulator, currentValue) => accumulator + currentValue,
  0
);
console.log(sum);

//Without using inBuilt
//custommap for mapping

const customMap = (array, callback) => {
  const mappedArray = [];
  for (let number = 0; number < array.length; number++) {
    mappedArray.push(callback(array[number]));
  }
  return mappedArray;
};

const numbersOfMapping = [21, 22, 23, 24, 25];
const addByTwo = customMap(numbersOfMapping, (value) => value + 2);
console.log(addByTwo);

//customfilter for filter

const customFilter = (array, callback) => {
  const filterArray = [];
  for (let number = 0; number < array.length; number++) {
    if (callback(array[number])) {
      filterArray.push(array[number]);
    }
  }
  return filterArray;
};

const numbersOfFilter = [99, 89, 79, 29, 22, 28, 66];
const checkIsEven = customFilter(numbersOfFilter, (value) => value % 2 === 0);
console.log(checkIsEven);

//customReduce for Reduce

const customReduce = (array, callback, startValue) => {
  let accumulator = startValue;
  if (accumulator === undefined) {
    accumulator = array[0];
  } else {
    accumulator = startValue;
  }
  let startIndex = startValue;
  if (startIndex === undefined) {
    startIndex = 1;
  } else {
    startIndex = 0;
  }
  for (let number = startIndex; number < array.length; number++) {
    accumulator = callback(accumulator, array[number]);
  }
  return accumulator;
};

const numbersOfReduce = [1, 2, 3, 4, 5];
const subtract = customReduce(
  numbersOfReduce,
  (accumulator, currentValue) => accumulator - currentValue,
  0
);

console.log(subtract);

// const customReduce = (array, callback, startValue) => {
//   let accumulator = startValue === undefined ? array[0] : startValue;
//   let startIndex = startValue === undefined ? 1 : 0;

//   for (let number = startIndex; number < array.length; number++) {
//     accumulator = callback(accumulator, array[number]);
//   }
//   return accumulator;
// };

// const numbersOfReduce = [1, 2, 3, 4, 5];
// const subtract = customReduce(
//   numbersOfReduce,
//   (accumulator, currentValue) => accumulator - currentValue,
//   0
// );

// console.log(subtract); // Output should be -15
