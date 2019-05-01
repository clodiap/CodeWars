// Write a function that combines two arrays by alternatingly taking elements from each array in turn.

// Examples:

// [a, b, c, d, e], [1, 2, 3, 4, 5] becomes  [a, 1, b, 2, c, 3, d, 4, e, 5]

// [1, 2, 3], [a, b, c, d, e, f] becomes [1, a, 2, b, 3, c, d, e, f]

// My solution
function mergeArrays(a, b) {
  let result = [];
  let maxLength;
  (a.length > b.length) ? maxLength = a.length : maxLength = b.length;
  for ( i = 0; i < maxLength; i++ ) {
    if ( a[i] ) result.push( a[i] );
    if ( b[i] ) result.push( b[i] )
  }
  return result;
}

// Tests

console.log( (mergeArrays([1, 2, 3, 4, 5, 6, 7, 8], ['a', 'b', 'c', 'd', 'e']) ) ); //, [1, "a", 2, "b", 3, "c", 4, "d", 5, "e", 6, 7, 8]);
console.log( (mergeArrays(['a', 'b', 'c', 'd', 'e'], [1, 2, 3, 4, 5])) ); //, ['a', 1, 'b', 2, 'c', 3, 'd', 4, 'e', 5]);
console.log( (mergeArrays([2, 5, 8, 23, 67, 6], ['b', 'r', 'a', 'u', 'r', 's'])) ); //, [2, 'b', 5, 'r', 8, 'a', 23, 'u', 67, 'r', 6, 's']);
console.log( (mergeArrays(['b', 'r', 'a', 'u', 'r', 's', 'e', 'q', 'z'], [2, 5, 8, 23, 67, 6])) ); //, ['b', 2, 'r', 5, 'a', 8, 'u', 23, 'r', 67, 's', 6, 'e', 'q', 'z']);

// others' solutions

// function mergeArrays(a, b) {
//   let j = [],
//       longest = a.length > b.length ? a:b;
//   for (var i=0; i<longest.length; i++){
//     if (a[i]) j.push(a[i])
//     if (b[i]) j.push(b[i])
//   }
//   return j
// }

// function mergeArrays(a, b) {
//   var answer = [];
//   for (i = 0; i < Math.max(a.length, b.length); i++){
//     if (i < a.length) {answer.push(a[i]);}
//     if (i < b.length) {answer.push(b[i]);}
//   }
//   return answer;
// }
