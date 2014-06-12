// Digit factorials
// Problem 34
// Published on Friday, 3rd January 2003, 06:00 pm; Solved by 49113
// 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

// Find the sum of all numbers which are equal to the sum of the factorial of their digits.

// Note: as 1! = 1 and 2! = 2 are not sums they are not included.


function curiousNumber(x) {
  var digits = x.toString().split('');
  var digitFactorials = digits.map(function(x){
    var factorial = 1;
    while (x>1) {
      factorial = factorial * x;
      x--;
    }
    return factorial;
  });
  

  var sum = 0;
  for(var i=0; i<digitFactorials.length; i++){
    sum = sum + digitFactorials[i];
  }
  if (sum===x && x!=2 && x!=1){
    return true;
  }
  else{
    return false;
  }
}

function findSumOfCuriousNumbers(){
  var curious=[];
  var sumCurious = 0;

  for(var x=1; x<100000; x++){
    if(curiousNumber(x)===true){
      curious.push(x);
    }
  }

  for(var y=0; y<curious.length; y++){
    sumCurious += curious[y];
  }
  return sumCurious;
  //return curious;
}