// Sieve of Eratosthenes

// The algorithm needs to have an upper limit for the primes to find. Lets call this limit N
// The algorithm works as follows.

// Create a list l of consecutive integers {2,3,…,N}.
// Select p as the first prime number in the list, p=2.
// Remove all multiples of p from the l.
// set p equal to the next integer in l which has not been removed.
// Repeat steps 3 and 4 until p^2 > N, all the remaining numbers in the list are primes


function findPrimesUnder(x) {
  var list = [];
  var prime = 2;
  var index = 0;

  for(var i=2; i<=x; i++){
    list.push(i);
  }
  
  while (prime*prime < x){

    list = list.filter(function(num){
      if(num % prime!=0 || num==prime){
        return num;
      }
    });

    index++;
    prime = list[index]
  }

  return list;
}