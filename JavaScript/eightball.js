let userName = '';
//can change username if you want ^^

userName ? console.log(`Hello, ${userName}!`) : console.log("Hello!");
//hello user or blank

var userQuestion = 'Is this a good project?';
//enter your question here ^^

console.log(`You asked: ${userQuestion}...`);

var randomNumber = Math.floor(Math.random()* 8);

var eightBall = '';

switch (randomNumber) {
  case 0 :
    eightBall = 'It is certain';
    break;
  case 1 :
    eightBall = 'It is decidedly so';
    break;
  case 2 :
    eightBall = 'Cannot predict now';
    break;
  case 3 :
    eightBall = 'Absolutely not';
    break;
  case 4 :
    eightBall = 'Don\'t count on it';
    break;
  case 5 :
    eightBall = 'My sources say no';
    break;
  case 6 :
    eightBall = 'Signs point to yes';
    break;
  case 7 :
    eightBall = 'Why are you asking me this?';
    break;
  default :
    eightBall = 'Reply hazy try again';
    break;
}

console.log("The all-knowing eight ball says: " + eightBall);


