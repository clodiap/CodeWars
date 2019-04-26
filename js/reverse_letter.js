//  Given a string str, reverse it omitting all non-alphabetic characters.
// Example
// For str = "krishan", the output should be "nahsirk".
// For str = "ultr53o?n", the output should be "nortlu".
// Input/Output
//     [input] string str
//     A string consists of lowercase latin letters, digits and symbols.
//     [output] a string

// My solution
function reverseLetter(str) {
  return str.split('').filter( (letter) => letter.match(/[a-z]/i) ).reverse().join('');
}

// Tests
console.log(reverseLetter("krishan")); //,"nahsirk")
console.log(reverseLetter("ultr53o?n")); //,"nortlu")
console.log(reverseLetter("ab23c")); //,"cba")
console.log(reverseLetter("krish21an")); //,"nahsirk")

// Others' solutions

// reverseLetter=(s)=>s.replace(/[^a-z]/gi,'').split('').reverse().join('');

// const reverseLetter = str => str.match(/[a-z]/g).reverse().join('');

// function reverseLetter(str) {
//   return str.split('')
//             .reverse()
//             .filter(val => /[a-zA-Z]/.test(val))
//             .join('');
// }
