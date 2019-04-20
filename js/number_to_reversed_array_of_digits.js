// You have to return the digits of this number within an array in reverse order.
// Example:
// 348597 => [7,9,5,8,4,3]

// my solution
function digitize(n) {
  return n.toString().split('').reverse().map( n => +n );
}

console.log(digitize(348597));

// others' solutions

// function digitize(n) {
//   return String(n).split('').map(Number).reverse()
// }
