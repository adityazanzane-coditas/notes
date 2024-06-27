const loanCalculator = (rateOfInterest) => {
  return [
    (totalAmount, time) => (totalAmount * rateOfInterest * time) / 100,
    (totalAmount) => (totalAmount * rateOfInterest * 12) / 100,
  ];
};

const homeLoan = loanCalculator(10);
const [PaymentForHomeLoan, displayHomeLoan] = homeLoan;

console.log(PaymentForHomeLoan(200000, 5));
console.log(displayHomeLoan(200000));

const carLoan = loanCalculator(8);
const [PaymentForCarLoan, displayCarLoan] = carLoan;

console.log(PaymentForCarLoan(30000, 3));
console.log(displayCarLoan(30000));

const educationLoan = loanCalculator(9);
const [PaymentForEducationLoan, displayEducationLoan] = carLoan;

console.log(PaymentForEducationLoan(10000, 3));
console.log(displayEducationLoan(10000));
