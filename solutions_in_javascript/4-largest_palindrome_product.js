// Largest palindrome product
// Problem 4
// A palindromic number reads the same both ways. The largest palindrome made 
// from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.


//nested for loops -> x - iterate from 999 down to 1; y iterate
//helper function method that checks if product is a palindrome
//if result is greater than current max value reassign value
//return max value

function palindromeCheck(number) {
  var test = number.toString();
  if(test ==test.split("").reverse().join('')){
    return true;
  }
  return false;
}

var largestPalindrome = function(){
  var result=0
  for(var x = 999; x>=1; x--){
    for(var y = 999; y>=1; y--){
      if(x*y>result && palindromeCheck(x*y)){
        result =x*y;
      }
    }
  }
  return result
};

largestPalindrome();