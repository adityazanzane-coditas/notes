// ASSIGNMENT-2
const users = [
  {
    name: "Brook",
    scores: 75,
    skills: ["HTM", "CSS", "JS"],
    age: 16,
  },
  {
    name: "Alex",
    scores: 80,
    skills: ["HTM", "CSS", "JS"],
    age: 18,
  },
  {
    name: "David",
    scores: 75,
    skills: ["HTM", "CSS"],
    age: 22,
  },
  {
    name: "John",
    scores: 85,
    skills: ["HTML"],
    age: 25,
  },
  {
    name: "Sara",
    scores: 95,
    skills: ["HTM", "CSS", "JS"],
    age: 26,
  },
  {
    name: "Martha",
    scores: 80,
    skills: ["HTM", "CSS", "JS"],
    age: 18,
  },
  {
    name: "Thomas",
    scores: 90,
    skills: ["HTM", "CSS", "JS"],
    age: 20,
  },
];
const constants = [2.72, 3.14, 9.81, 37, 100];
const countries = ["Finland", "Estonia", "Sweden", "Denmark", "Norway"];
const rectangle = {
  width: 20,
  height: 10,
  area: 200,
  perimeter: 60,
};

// Destructure and assign the elements of constants array to e, pi, gravity, humanBodyTemp, waterBoilingTemp.
const [e, pi, gravity, humanBodyTemp, waterBoilingTemp] = constants;
console.log(e, pi, gravity, humanBodyTemp, waterBoilingTemp);

// Destructure and assign the elements of countries array to fin, est, sw, den, nor
const [fin, est, sw, en, nor] = countries;
console.log(fin, est, sw, en, nor);

// Destructure the rectangle object by its properties or keys.
const { width, height, area, perimeter } = rectangle;
console.log(width, height, area, perimeter);

// Iterate through the users array and get all the keys of the object using destructuring
for (const user of users) {
  const { name } = user,
    { scores } = user,
    { skills } = user,
    { age } = user;
  console.log(`name:${name}, scores:${scores}, skills:${skills}, age :${age}`);
}

// Find the persons who have less than two skills

const lessThanTwoSkillsUsers = users.filter(({ skills }) => skills.length < 2);
console.log(lessThanTwoSkillsUsers);

// Destructure the countries array print name, capital, population and languages of all countries
const additionalCountriesDetails = [
  {
    name: "China",
    capital: "Beijing",
    population: 1444216107,
    languages: ["Mandarin"],
  },
  {
    name: "Brazil",
    capital: "Brasília",
    population: 213993437,
    languages: ["Portuguese"],
  },
  {
    name: "Russia",
    capital: "Moscow",
    population: 145912025,
    languages: ["Russian"],
  },
  {
    name: "Australia",
    capital: "Canberra",
    population: 25788222,
    languages: ["English"],
  },
];

additionalCountriesDetails.forEach(
  ({ name, capital, population, languages }) => {
    console.log(name, capital, population, languages);
  }
);

// 7. Destructure the following array name to name, skills array to skills, scores array to scores, JavaScript score to jsScore and React score to reactScore variable in one line.
const studentDestructure = [
  "David",
  ["HTML", "CSS", "JS", "React"],
  [98, 85, 90, 95],
];
const [studentName, studentSkills, jsScore, , reactScore] = studentDestructure;
console.log(studentName, studentSkills, jsScore, reactScore);

// 8. Write a function called convertArrayToObject which can convert the array to a structure object.
const students = [
  ["David", ["HTML", "CSS", "JS", "Node"], [98, 85, 90, 95]],
  ["John", ["HTML", "CSS", "JS", "Node"], [85, 80, 85, 80]],
];

function convertArrayToObject(students) {
  const newStudents = [];
  for (const student of students) {
    console.log(student);
    const [name, skills, scores] = student;
    const studentsInfo = {};
    studentsInfo.name = name;
    studentsInfo.skills = skills;
    studentsInfo.scores = scores;
    newStudents.push(studentsInfo);
  }
  return newStudents;
}

console.log(convertArrayToObject(students));

// 9. Copy the student object to newStudent without mutating the original object. In the new object add the following ?

const Student = {
  name: "David",
  age: 25,
  skills: {
    frontEnd: [
      { skill: "HTML", level: 10 },
      { skill: "CSS", level: 8 },
      { skill: "JS", level: 8 },
      { skill: "React", level: 9 },
    ],
    backEnd: [
      { skill: "Node", level: 7 },
      { skill: "GraphQL", level: 8 },
    ],
    dataBase: [{ skill: "MongoDB", level: 7.5 }],
    dataScience: ["Python", "R", "D3.js"],
  },
};
// output should look like this:
//     {
//     name: 'David',
//     age: 25,
//     skills: {
//       frontEnd: [
//         {skill: 'HTML',level: 10},
//         {skill: 'CSS',level: 8},
//         {skill: 'JS',level: 8},
//         {skill: 'React',level: 9},
//         {skill: 'BootStrap',level: 8}
//       ],
//       backEnd: [
//         {skill: 'Node',level: 7},
//         {skill: 'GraphQL',level: 8},
//         {skill: 'Express',level: 9}
//       ],
//       dataBase: [
//         { skill: 'MongoDB',level: 7.5},
//         { skill: 'SQL',level: 8}
//       ],
//       dataScience: ['Python','R','D3.js','SQL']
//     }
//   }

const newStudent = JSON.parse(JSON.stringify(Student));
// Add Bootstrap with level 8 to the front end skill sets
const {
  skills: { frontEnd },
} = newStudent;
frontEnd.push({ skill: "Bootstrap", level: 8 });

// Add Express with level 9 to the back end skill sets
const {
  skills: { backEnd },
} = newStudent;
backEnd.push({ skill: "Express", level: 9 });

// Add SQL with level 8 to the data base skill sets
const {
  skills: { dataBase },
} = newStudent;
backEnd.push({ skill: "SQL", level: 8 });

// Add SQL without level to the data science skill sets
const {
  skills: { dataScience },
} = newStudent;
dataScience.push("SQL");

console.log(newStudent);
