//practicing leveling up and affecting stats automatically

//declaring vars

let levelUp = 1;
let potential = 10000;
let HP = 10;
let attack = 12;
let defense = 12;
let magic = 12;
let skillCheck = 2000;

// Math logic for leveling;

levelUp += 1;
potential -= 100;
HP *= 2;
attack *= 1.5;
defense *= .8;
magic *= .4;
skillCheck /= 12;


// displays vars and level up text

console.log('The value of levelUp:', levelUp); 
console.log('Potential value: ', potential); 
console.log('HP:', HP); 
console.log('Attack:', attack); 
console.log('Defense:', Math.floor(defense)); 
console.log('Magic:', Math.floor(magic)); 
console.log('The value of skillCheck:', Math.floor(skillCheck));
