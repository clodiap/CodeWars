// Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.
// Examples

// "This is an example!" ==> "sihT si na !elpmaxe"
// "double  spaces"      ==> "elbuod  secaps"

// My solution
function reverseWords(str) {
  return str.split(' ').map(word => word.split('').reverse().join('') ).join(' ');
}

// tests
console.log(reverseWords('The quick brown fox jumps over the lazy dog.')); //, 'ehT kciuq nworb xof spmuj revo eht yzal .god');
console.log(reverseWords('apple'));//, 'elppa');
console.log(reverseWords('a b c d'));//, 'a b c d');
console.log(reverseWords('double  spaced  words'));//, 'elbuod  decaps  sdrow');


// Others' solutions

// const reverseWords = input => input.split(" ").map(a => a.split("").reverse().join("")).join(" ");

// var reverseWords=s=>s.replace(/\S+/g,v=>[...v].reverse().join``)

// function reverseWords(str) {
//   return str.split(' ').reduce(function(a,b,ind){
//     return a.concat(b.split('').reverse().join(''));
//   }, []).join(' ');
// }
