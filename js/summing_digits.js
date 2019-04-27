// Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number's decimal digits. For example:

//   sumDigits(10);  // Returns 1
//   sumDigits(99);  // Returns 18
//   sumDigits(-32); // Returns 5

// My solution
function sumDigits(number) {
  return Math.abs(number)
                    .toString().split('')
                    .map( nb => parseInt( nb ) )
                    .reduce( ( total, element ) => total + element );

}

// Tests

console.log(sumDigits(10)); //, 1);
console.log(sumDigits(99)); //, 18);
console.log(sumDigits(-32)); //, 5);

// Others' solutions

// sumDigits = n => Math.abs(n).toString().split('').reduce((s, e) => s + +e, 0);

// function sumDigits(number) {
//   return +(number + '').match(/\d/g).reduce((a,b)=>+a + +b);
// }
