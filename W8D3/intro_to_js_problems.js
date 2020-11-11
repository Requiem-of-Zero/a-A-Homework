function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x); //
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';  //in block  out of block
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';  
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

// mysteryScoping1()
// mysteryScoping2()
// mysteryScoping3()
// mysteryScoping4()
// mysteryScoping5()

const madLib = (verb, adj, noun) => {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`)
}

// madLib('make', 'best', 'guac')

const isSubstring = (searchString, subString) => {
  splitStr = searchString.split(" ");

  for(let i=0; i < splitStr.length; i++){
    if(splitStr[i] === subString){
      return true;
    }
  }
  return false;
}

isSubstring("time to program", "time")
isSubstring("Jump for joy", "joys")

const fizzBuzz = (array) => {
  let result = [];

  for(let i=0; i < array.length; i++){
    if(array[i] % 3 === 0 && array[i] % 5 === 0 ) {
      continue
    } else if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      result.push(array[i])
    }
  }

  return result
}

// console.log(
//   fizzBuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
// );

const isPrime = (number) => {
  if(number < 2) return false;

  for(let i=2; i <= Math.sqrt(number); i++){
    if(number % i === 0) return false;
  }

  return true;
}

const firstNPrimes = (num) => {
  let primes = [];

  let idx = 2;
  while(primes.length !== num){
    if(isPrime(idx)){
      primes.push(idx);
    }
    idx++;
  }

  return primes;
}

const sumOfNPrimes = (n) => {
  let sum = 0;
  primesArr = firstNPrimes(n);

  for(let i=0; i < primesArr.length; i++){
    sum += primesArr[i];
  }

  return sum;
}

console.log(sumOfNPrimes(4));