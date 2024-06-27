//Intialization of each keyword
var firstname="Aditya";
let middlename="Satish";
const lastname="Zanzane";

//Block code and Scope
function fullname(){
    //print all the names first
    console.log(firstname);
    console.log(middlename);
    console.log(lastname);

    //Checking that is firstname equal
    if(firstname=="Aditya"){
        //Assigning value of company, as let keyword can be accessed in a particular block of if condn
        let company="Coditas";
        console.log(company);

        //Assigning value of var as var keyword can be accessed outside the block of code.
        // var company="XYZ";
        // console.log(company);
    }
    //let cannot get accessed here as it outside the block while var is accessible.
    // console.log(company);
}
fullname();
// console.log(company);

//Changing the first and middle name to show that var and let can be reassgined while const remains the same.
firstname="John"
middlename="Jacob"


console.log(firstname)
console.log(middlename)
console.log(lastname)

//If we try to change the lastname which is const the it shows ERROR that const value cannot changed.
//lastname="Jason";
