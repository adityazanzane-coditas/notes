// Day-13 Assignment
// Create an empty object called cow
const cow = {};

// Print the the cow object on the console
console.log(cow);

// Add name, legs, color, age and sound properties for the cow object. The sound property is a method which return "maaah maaah"
Object.assign(cow, {
  name: "",
  legs: 4,
  color: "Brown",
  age: 5,
  sound: function () {
    return "maaah maaah";
  },
});

// Get name, legs, color, age and sound value from the cow object
const { name, legs, color, age, sound } = cow;

// Set new properties the cow object: breed, getCowInfo()
cow.breed = "Brown Swiss cattle";
cow.getCowInfo = function () {
  return `Name: ${this.name}, Legs: ${this.legs}, Color: ${this.color}, Age: ${this.age}`;
};

// Find the person who has many skills in the users object.
const users = {
  Alex: {
    email: "alex@alex.com",
    skills: ["HTML", "CSS", "JavaScript"],
    age: 20,
    isLoggedIn: false,
    points: 30,
  },
  Asab: {
    email: "asab@asab.com",
    skills: [
      "HTML",
      "CSS",
      "JavaScript",
      "Redux",
      "MongoDB",
      "Express",
      "React",
      "Node",
    ],
    age: 25,
    isLoggedIn: false,
    points: 50,
  },
  Brook: {
    email: "daniel@daniel.com",
    skills: ["HTML", "CSS", "JavaScript", "React", "Redux"],
    age: 30,
    isLoggedIn: true,
    points: 50,
  },
  Daniel: {
    email: "daniel@alex.com",
    skills: ["HTML", "CSS", "JavaScript", "Python"],
    age: 20,
    isLoggedIn: false,
    points: 40,
  },
  John: {
    email: "john@john.com",
    skills: ["HTML", "CSS", "JavaScript", "React", "Redux", "Node.js"],
    age: 20,
    isLoggedIn: true,
    points: 50,
  },
  Thomas: {
    email: "thomas@thomas.com",
    skills: ["HTML", "CSS", "JavaScript", "React"],
    age: 20,
    isLoggedIn: false,
    points: 40,
  },
  Paul: {
    email: "paul@paul.com",
    skills: [
      "HTML",
      "CSS",
      "JavaScript",
      "MongoDB",
      "Express",
      "React",
      "Node",
    ],
    age: 20,
    isLoggedIn: false,
    points: 40,
  },
};

for (const user in users) {
  if (users[user].skills.length > 1) {
    console.log(users[user]);
  }
}

// Count logged in users, count users having greater than equal to 30 points from the following object.

let loggedInUsers = 0;
let pointsGreaterThan30Users = 0;

for (const user in users) {
  if (users[user].isLoggedIn) {
    loggedInUsers++;
  }
  if (users[user].points >= 30) {
    pointsGreaterThan30Users++;
  }
}
console.log(`Number of logged-in users: ${loggedInUsers}`);

// Find people who are MERN stack developer from the users object

for (const user in users) {
  if (users[user].skills.includes("React", "Node", "Express", "MongoDB")) {
    console.log(users[user]);
  }
}

// Set your name in the users object without modifying the original users object
const updatedUsers = {
  ...users,
  aditya: {
    email: "aditya.zanzane@coditas.com",
    skills: ["Javascript", "HTML"],
    age: 22,
    isLoggedIn: true,
    points: 111,
  },
};

console.log(updatedUsers);

// Get all keys or properties of users object
const keys = Object.keys(users);
console.log("Keys:", keys);

// Get all the values of users object
const values = Object.values(users);
console.log("Values: ", values);

// Use the countries object to print a country name, capital, populations and languages.
const countries = {
  India: {
    capital: "New Delhi",
    population: 647336738,
    language: ["hindi, english, marathi"],
  },
  USA: {
    capital: "Washington D.C.",
    population: 150922309,
    language: ["english"],
  },
};

for (const country in countries) {
  console.log(country + ":");
  console.log(`Capital: ${countries[country].capital}`);
  console.log(`Population: ${countries[country].population}`);
  console.log(`Languages: ${countries[country].language.join(", ")}`);
}

// Create an object called personAccount. It has firstName, lastName, incomes, expenses properties and it has totalIncome, totalExpense, accountInfo,addIncome, addExpense and accountBalance methods. Incomes is a set of incomes and its description and expenses is a set of incomes and its description.
const personAccount = {
  firstName: "Aditya",
  lastName: "Zanzane",
  incomes: {
    salary: 20000,
    freelancing: 1000,
    mutualFunds: 3000,
  },
  expenses: {
    rent: 4000,
    food: 2000,
    travel: 1000,
  },
  totalIncome: function () {
    let total = 0;
    for (const income of Object.values(this.incomes)) {
      total += income;
    }
    return total;
  },
  totalExpenses: function () {
    let total = 0;
    for (const expense of Object.values(this.expenses)) {
      total += expense;
    }
    return total;
  },
  accountInfo: function () {},
  addIncome: function () {},
  addExpense: function () {},
  accountBalance: function () {},
};
console.log("Total Income: ", personAccount.totalIncome());
console.log("Total Expenses: ", personAccount.totalExpenses());

// Imagine you are getting the below users array of objects.
const users2 = [
  {
    _id: "ab12ex",
    username: "Alex",
    email: "alex@alex.com",
    password: "123123",
    createdAt: "08/01/2020 9:00 AM",
    isLoggedIn: false,
  },
  {
    _id: "fg12cy",
    username: "Asab",
    email: "asab@asab.com",
    password: "123456",
    createdAt: "08/01/2020 9:30 AM",
    isLoggedIn: true,
  },
  {
    _id: "zwf8md",
    username: "Brook",
    email: "brook@brook.com",
    password: "123111",
    createdAt: "08/01/2020 9:45 AM",
    isLoggedIn: true,
  },
  {
    _id: "eefamr",
    username: "Martha",
    email: "martha@martha.com",
    password: "123222",
    createdAt: "08/01/2020 9:50 AM",
    isLoggedIn: false,
  },
  {
    _id: "ghderc",
    username: "Thomas",
    email: "thomas@thomas.com",
    password: "123333",
    createdAt: "08/01/2020 10:00 AM",
    isLoggedIn: false,
  },
];

const products = [
  {
    _id: "eedfcf",
    name: "mobile phone",
    description: "Huawei Honor",
    price: 200,
    ratings: [
      { userId: "fg12cy", rate: 5 },
      { userId: "zwf8md", rate: 4.5 },
    ],
    likes: [],
  },
  {
    _id: "aegfal",
    name: "Laptop",
    description: "MacPro: System Darwin",
    price: 2500,
    ratings: [],
    likes: ["fg12cy"],
  },
  {
    _id: "hedfcg",
    name: "TV",
    description: "Smart TV:Procaster",
    price: 400,
    ratings: [{ userId: "fg12cy", rate: 5 }],
    likes: ["fg12cy"],
  },
];
// Create a function called signUp which allows user to add to the collection. If user exists, inform the user that he has already an account.
function signUp(userName, email) {
  if (users.hasOwnProperty(userName)) {
    console.log(`${userName}, username already have account`);
  } else {
    users[userName] = { email: email };
  }
}
signUp("Aditya", "aditya.zanzane@coditas.com");
console.log(users);

// Create a function called signIn which allows user to sign in to the application
function signIn(userName, userEmail) {
  if (users.hasOwnProperty(userName)) {
    const { email } = users[userName];
    if (email === userEmail) {
      console.log("Signed IN");
    } else {
      console.log("Username does not match with credentials");
    }
  } else {
    console.log("Invalid User!!!");
  }
}
signIn("Aditya", "aditya.zanzane@coditas.com");

// The products array has three elements and each of them has six properties.
const newProducts = [
  {
    _id: "hgfayu",
    name: "Tablet",
    description: "Samsung Galaxy Tab",
    price: 300,
    ratings: [
      { userId: "ab123", rate: 4 },
      { userId: "cd456", rate: 3.5 },
    ],
    likes: ["ab123", "ef789"],
  },
  {
    _id: "plmkio",
    name: "Smartwatch",
    description: "Apple Watch Series 6",
    price: 400,
    ratings: [],
    likes: ["gh567"],
  },
  {
    _id: "tgbnhy",
    name: "Headphones",
    description: "Sony WH-1000XM4",
    price: 350,
    ratings: [{ userId: "ij890", rate: 4.5 }],
    likes: [],
  },
];

// Create a function called rateProduct which rates the product
function rateProduct(productId, userId, rating) {
  for (const product of products) {
    const { _id } = product;
    if (_id === productId) {
      const { ratings } = product;
      ratings.push({ userId: userId, rate: rating });
    }
  }
}
rateProduct("hgfayu", "ab123", 4.5);
console.log(products);

// Create a function called averageRating which calculate the average rating of a product

function averageRating(productId) {
  for (const product of products) {
    const { _id } = product;
    if (_id === productId) {
      const { ratings } = product;
      let sumOfRatings = 0;
      const totalRatings = ratings.length;
      for (const rating of ratings) {
        const { rate } = rating;
        sumOfRatings += rate;
      }
      return sumOfRatings / totalRatings;
    }
  }
}
console.log(averageRating("eedfcf"));

// Create a function called likeProduct. This function will helps to like to the product if it is not liked and remove like if it was liked.
function likeProduct(productId, userId) {
  for (const product of products) {
    const { _id } = product;
    if (_id === productId) {
      const { likes } = product;
      if (likes.includes(userId)) {
        const userIdToRemove = likes.indexOf(userId);
        likes.splice(userIdToRemove, 1);
      } else {
        likes.push(userId);
      }
      console.log(products);
    }
  }
  console.log(products);
}
