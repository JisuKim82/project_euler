// Largest prime factor
// Problem 3
// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

//Step1: create function that takes in a value (ex: 12)
//Step2: start with 2 (lowest prime) and assign to variable i
//Step3: if value is evenly divisible by i divide result once again by i
//Step4: repeat until it is not evenly divisible and then increment i
//Step5: loop until i is greater than value and return i

var largestPrimeFactor = function(number){
  var i = 2;
  while(i<=number){
    if(number%i===0){
      number = number/i;
    }else{
      i++;
    }
  }
  return i
}

//number = 12 ->  6 -> 3 -> 3 -> 1 
//i      = 2  ->  2 -> 2 -> 3 -> 3 (returned)

//number = 15 ->  15 -> 5 -> 5 -> 5 -> 1 
//i      = 2  ->  3  -> 3 -> 4 -> 5 -> 5 (returned)