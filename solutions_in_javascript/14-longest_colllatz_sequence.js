// Longest Collatz sequence
// Problem 14
// The following iterative sequence is defined for the set of positive integers:

// n → n/2 (n is even)
// n → 3n + 1 (n is odd)

// Using the rule above and starting with 13, we generate the following sequence:

// 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
// It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

// Which starting number, under one million, produces the longest chain?

// NOTE: Once the chain starts the terms are allowed to go above one million.


// iterate from 2 to one million
// if value is even n/2
// if value is odd (3n+1)
// keep count

(function numWithLongestCollatz(){
  function countOfCollatzSequence(num){
    var count =1;
    while(num!=1){
      if(num%2==0){
        num=num/2;
        count++;
      }
      else{
        num=3*num+1;
        count++;
      }
    }
    return count;
  }

  var result=0;
  var terms=0;
  for(var i=1; i<1000000; i++){
    if(countOfCollatzSequence(i)>terms){
      terms = countOfCollatzSequence(i);
      result = i;
    }
  }
  return result;
})();


