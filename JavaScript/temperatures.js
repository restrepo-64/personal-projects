//kelvin will be constant
const kelvin = 293;

//celsius convert from kelvin; const?
let celsius = kelvin - 273;

//adding newton conversion
let newton = celsius * (33/100);
newton = Math.floor(newton);

//celsius to fahrenheit then round
let fahrenheit = celsius * (9/5) + 32;

//round occurs here
fahrenheit = Math.floor(fahrenheit);

//display all the temps
console.log('The temperature is ' + fahrenheit + ' degrees Fahrenheit.');

console.log(`The temperature is ${newton} degrees Newton.`);