// Sum square difference
// Problem 6
// The sum of the squares of the first ten natural numbers is,

// 1^2 + 2^2 + ... + 10^2 = 385
// The square of the sum of the first ten natural numbers is,

// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


function sumSquareDifference(number){
  var squaredSum=0;
  var sum=0;
  for(var i=1; i<=number; i++){
    squaredSum += (i*i);
    sum += i;
  }
  return (sum*sum - squaredSum);
}