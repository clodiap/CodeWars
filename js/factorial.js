// In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n. For example: 5! = 5 * 4 * 3 * 2 * 1 = 120. By convention the value of 0! is 1.

// Write a function to calculate factorial for a given input. If input is below 0 or above 12 throw an exception of type ArgumentOutOfRangeException (C#) or IllegalArgumentException (Java) or RangeException (PHP) or throw a RangeError (JavaScript).

// My solution
function factorial(n) {
  if (n < 0 || n > 12)
    throw new RangeError("The input must be between 0 and 12.")

  let result = 1;
  for (let i = n; i > 0 ; i--) {
    result *= i;
  }
  return result;

}

// tests
console.log(factorial(0)) //, 1, "factorial for 0 is 1");
console.log(factorial(1)) //, 1, "factorial for 1 is 1");
console.log(factorial(2)) //, 2, "factorial for 2 is 2");
console.log(factorial(3)) //, 6, "factorial for 3 is 6");


//Others' solutions

// function factorial(n){
//  if (n < 0 || n > 12) {
//     throw new RangeError('Parameter must be between ' + 0 + ' and ' + 12);
//   }
// return n<2 ? 1 : n*factorial(n-1);
// }

// const factorial = n => n < 0 || n > 12 ? Array(-1) : (f = n => (n < 2) ? 1 : f(n - 1) * n)(n);

// function factorial(n) {
//   if (n < 0 || n > 12)
//     throw RangeError();
//   var f = 1;
//   while (n > 1)
//     f *= n--;
//   return f;
// }
