// Length of missing array

// You get an array of arrays.
// If you sort the arrays by their length, you will see, that their length-values are consecutive.
// But one array is missing!

// You have to write a method, that return the length of the missing array.

// Example:
// [[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]] --> 3

// If the array of arrays is null/nil or empty, the method should return 0.

// When an array in the array is null or empty, the method should return 0 too!
// There will always be a missing element and its length will be always between the given arrays.

// Have fun coding it and please don't forget to vote and rank this kata! :-)

// I have created other katas. Have a look if you like coding and challenges.

// ARRAYS ALGORITHMS

//Solution

function getLengthOfMissingArray(arrayOfArrays) {
  const result = 0;

  if (
    !Array.isArray(arrayOfArrays) ||
    arrayOfArrays === null ||
    arrayOfArrays === 0
  )
    return 0;
  if (arrayOfArrays.some((arr) => arr === null || arr === undefined)) return 0;

  arrayOfArrays.sort((myFunction = (a, b) => a.length - b.length));

  for (let index = 0; index <= arrayOfArrays.length - 1; index++) {
    let firstArray = arrayOfArrays[index];
    let secondArray = arrayOfArrays[index + 1];

    if (firstArray.length === 0 || secondArray.length === 0) {
      return 0;
    }

    if (parseInt(firstArray.length) !== parseInt(secondArray.length - 1)) {
      return firstArray.length + 1;
    }
  }

  return result;
}
