//pyramid numbers
// let rows = 5;
// let pattern = "";

// for (let iteration = 1; iteration <= rows; iteration++) {
//   for (let space = 1; space <= rows - iteration; space++) {
//     pattern += " ";
//   }
//   for (let number = 1; number <= 2 * iteration - 1; number++) {
//     pattern += number;
//   }
//   pattern += "\n";
// }
// console.log(pattern);

//diamond problem
// let n = 5;
// for (let i = 1; i <= n; i++) {
//   let str = "";

//   for (let j = 1; j <= 2 * n; ++j) {
//     if (i + j == n + 1 || i == j - n + 1) {
//       str += "*";
//     } else str += " ";
//   }

//   console.log(str);
// }
// for (let i = n - 1; i >= 1; i--) {
//   let str = "";
//   for (let j = 1; j <= 2 * n; ++j) {
//     if (i + j == n + 1 || i == j - n + 1) str += "*";
//     else str += " ";
//   }

//   console.log(str);
// }

//using repeat
const rows = 5;
for (let i = 1; i <= rows; i++) {
  let pattern = " ".repeat(rows - i);
  if (i === 1) {
    pattern += "*";
  } else {
    pattern += "*";
    pattern += " ".repeat((i - 1) * 2 - 1);
    pattern += "*";
  }
  console.log(pattern);
}
for (let i = rows - 1; i >= 1; i--) {
  let pattern = " ".repeat(rows - i);
  if (i === 1) {
    pattern += "*";
  } else {
    pattern += "*";
    pattern += " ".repeat((i - 1) * 2 - 1);
    pattern += "*";
  }
  console.log(pattern);
}
