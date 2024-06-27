//Assignment:-
//Write a code for promises which have 4 promises and one of them is reject and other three are resolve,
//it will give output as reject so why it is giving output as reject and how to resolve it.

const studentKnowsJs = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const success = Math.random() > 0.3;
      if (success) {
        resolve("The student skills are in JS");
      } else {
        reject("The student skills are not in JS");
      }
    }, 1200);
  });
};

const studentKnowsMongoDb = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const success = Math.random() > 0.1;
      if (success) {
        resolve("The student skills are in MongoDB");
      } else {
        reject("The student skills are not in MongoDB");
      }
    }, 800);
  });
};

const studentKnowsOOPS = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const success = Math.random() > 0.4;
      if (success) {
        resolve("The student skills are in OOPS");
      } else {
        reject("The student skills are not in OOPS");
      }
    }, 1500);
  });
};

const studentKnowsHTTP = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const success = Math.random() > 0.2;
      if (success) {
        resolve("The student skills are in HTTP");
      } else {
        reject("The student skills are not in HTTP");
      }
    }, 1000);
  });
};

// Execute all promises
const executeAllPromises = () => {
  const promises = [
    studentKnowsJs(),
    studentKnowsMongoDb(),
    studentKnowsOOPS(),
    studentKnowsHTTP(),
  ];

  Promise.all(promises)
    .then(() => {
      console.log("All promises resolved successfully");
    })
    .catch((error) => {
      console.log("Promises which got rejected:", error);
    });
};

executeAllPromises();
