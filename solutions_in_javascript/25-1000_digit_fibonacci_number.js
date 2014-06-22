// 1000-digit Fibonacci number
// Problem 25
// The Fibonacci sequence is defined by the recurrence relation:

// Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
// Hence the first 12 terms will be:

// F1 = 1
// F2 = 1
// F3 = 2
// F4 = 3
// F5 = 5
// F6 = 8
// F7 = 13
// F8 = 21
// F9 = 34
// F10 = 55
// F11 = 89
// F12 = 144
// The 12th term, F12, is the first term to contain three digits.

// What is the first term in the Fibonacci sequence to contain 1000 digits?

function firstFibonnacciTerm(digits) {
  var first = 1;
  var second = 1;
  var x;
  var term = 3;

  while((first+second).toString().length < digits){
    x = first + second  // 2->3->5->8
    first = second;     // 1->2->3->5
    second = x;         // 2->3->5->8
    term++;             // 4->5->6->7
  }
  return term;
}