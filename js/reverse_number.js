// Given a number, write a function to output its reverse digits. (e.g. given 123 the answer is 321)

// Numbers should preserve their sign; i.e. a negative number should still be negative when reversed.
// Examples

//  123 ->  321
// -456 -> -654
// 1000 ->    1

// My solution
function reverseNumber(n) {
  let result;
  let arrayNb = n.toString().split('').reverse();
  if ( n < 0 ) {
    arrayNb.pop();
    result = parseInt(arrayNb.pop().join(''));
    result = - result;
  } else {
    result = parseInt(arrayNb.join(''));
  }
  return result;
}

// Tests
console.log(reverseNumber(123)) //, 321)
console.log(reverseNumber(-123)) //, -321, 'Negative Numbers should be preserved')
console.log(reverseNumber(1000)) //, 1, 'Should handle numbers ending with "0"')
console.log(reverseNumber(4321234)) //, 4321234)
console.log(reverseNumber(5)) //, 5)
console.log(reverseNumber(0)) //, 0)
console.log(reverseNumber(98989898)) //, 89898989)

// Others' solutions

// function reverseNumber(n) {
//   let isNegative = n < 0;
//   let reverseAsString = Math.abs(n).toString().split('').reverse().join('');
//   let result = Number(reverseAsString);

//   return isNegative ? -result : result;
// }

// reverseNumber = n => (n > 0 ? 1 : -1) * Math.abs(n).toString().split('').reverse().join('');

// function reverseNumber(n) {
//   return Math.sign(n) * Math.abs(n)
//     .toString()
//     .split``
//     .reverse()
//     .join``;
// }
