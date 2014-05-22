// 10001st prime
// Problem 7
// Published on Friday, 28th December 2001, 06:00 pm; Solved by 188935
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

// What is the 10 001st prime number?

function xthPrimeNumber(val){
  
  function checkIfPrime(x){
    for(var i=2; i<x; i++){
      if(x%i==0){
        return false;
      }
    }
    return true;
  }

  var primes=[];
  var x=2;
  while(primes.length<val){
    if(checkIfPrime(x)){
      primes.push(x);
    }
    x++;
  }
  return primes.pop();
}

xthPrimeNumber(10001);