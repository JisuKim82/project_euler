// Summation of primes
// Problem 10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
// Find the sum of all the primes below two million.

function primeCheck(number){
  for(var i=2; i<number; i++){
    if(number%i === 0){
      return false;
    }
  }
  return true;
}

function sumPrimesUnder2Mil(){
  var sum = 0;
  for(var i=2; i<2000000; i++){
    if(primeCheck(i)){
      sum += i;
    }
  }
  return sum;
}