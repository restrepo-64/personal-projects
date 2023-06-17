//human age to doggo age; first 2 years = 10.5 years each
//after 2 years, human year = 4 dog years

//human age
const myAge = 4269;

//earlyYears for doggo
let earlyYears = 2;
earlyYears *= 10.5;

//after 2 years doggo, don't need 2 because just calculated line previous
laterYears = myAge - 2;

//doing the 4 year progression
laterYears *= 4;

//testing math
let myAgeInDogYears = earlyYears + laterYears;

//lower case the name
let myName = 'Lexi'.toLowerCase();

//log final result
console.log(`My name is ${myName}. I am ${myAge} years old in human years which is ${myAgeInDogYears} in dog years.`)