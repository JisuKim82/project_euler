// Digit fifth powers
// Problem 30
// Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

// 1634 = 1^4 + 6^4 + 3^4 + 4^4
// 8208 = 8^4 + 2^4 + 0^4 + 8^4
// 9474 = 9^4 + 4^4 + 7^4 + 4^4
// As 1 = 1^4 is not a sum it is not included.

// The sum of these numbers is 1634 + 8208 + 9474 = 19316.

// Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

function sumOfDigitsRaised(number) {
  var digits = [];
  digits = number.toString().split('').map(function(x){return parseInt(x,10);})

  var sum = 0;
  for(var i = 0; i < digits.length; i++){
    sum = sum + (digits[i]*digits[i]*digits[i]*digits[i]*digits[i]);
  }

  return sum;
}

(function sumOfAllNumbers(){
  var total = 0;
  for(var x = 2; x<1000000; x++){
    if(sumOfDigitsRaised(x) == x){
      total = total + x;
    }
  }
  return total;
})();