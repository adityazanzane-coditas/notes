//stock price prediction
// const prices = [7, 1, 5, 3, 6, 4];
// let profit = 0;

// for (let iteration = 0; iteration < prices.length; iteration++) {
//   // for(let iteration2=iteration+1;iteration2<=prices.length;iteration2++){
//   if (prices[iteration] < prices[iteration + 1]) {
//     profit += prices[iteration];
//   }
//   //}
// }

// console.log(profit);

//correct solution
const prices = [7, 1, 5, 3, 6, 4];
function maximumProfit(prices) {
  let maxProfit = 0;
  let minPrice = prices[0];

  for (let sell = 1; sell < prices.length; sell++) {
    let sellPrice = prices[sell];
    let profit = sellPrice - minPrice;

    maxProfit = Math.max(maxProfit, profit);

    if (sellPrice < minPrice) {
      minPrice = sellPrice;
    }
  }
  return maxProfit;
}
console.log(maximumProfit(prices));

//flood fill algorithm having 1 and 0 where 1 are the colored positions and 0 acts as a barrier
//we have to color the 1 positions to new color pixel as 2.
// let image = [
//   [1, 1, 1],
//   [1, 1, 0],
//   [1, 0, 1],
// ];
// const sr = 1,
//   sc = 1,
//   color = 2;

// let newValues = [];

// for (let rows = 0; rows < image.length; rows++) {
//   for (let columns = 0; columns < image.length; columns++) {
//     if (image[rows] === sr && image[columns] === sc) {
//       newValues += image.push(fill(color));
//     }
//   }
// }
// console.log(newValues);

let image = [
  [1, 1, 1],
  [1, 1, 0],
  [1, 0, 1],
];
const sr = 1,
  sc = 1,
  newColor = 2;

const floodFill = function (image, sr, sc, newColor) {
  const currentValue = image[sr][sc];

  function dfs(rows, columns) {
    if (
      rows < 0 ||
      rows >= image.length ||
      columns < 0 ||
      columns >= image[0].length ||
      image[rows][columns] !== currentValue ||
      image[rows][columns] === newColor
    ) {
      return;
    }
    image[rows][columns] = newColor;

    dfs(rows + 1, columns);
    dfs(rows - 1, columns);
    dfs(rows, columns + 1);
    dfs(rows, columns - 1);
  }

  dfs(sr, sc);
  return image;
};

console.log(floodFill(image, sr, sc, newColor));
