// Factorial digit sum
// Problem 20
// n! means n × (n − 1) × ... × 3 × 2 × 1

// For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
// and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

// Find the sum of the digits in the number 100!



function factorial(number){
  var total = 1;
  for(var i=number; i>=1; i--){
    total = total*i;
  }
  return total;
}

function sumOfDigits(value){
  var digits = value.toString().split('');
  var digits_arr = digits.map(function(x){return parseInt(x,10);});
  
  var sum = 0;
  for (var j = 0; j<digits_arr.length; j++){
    sum += digits_arr[j];
  }
  return sum;
}

sumOfDigits(factorial(100));

//getting NaN because factorial(100) evaluates to 9.332621544394418e+157