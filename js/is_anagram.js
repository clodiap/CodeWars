// An anagram is the result of rearranging the letters of a word to produce a new word (see wikipedia).
// Note: anagrams are case insensitive
// Complete the function to return true if the two arguments given are anagrams of theeach other; return false otherwise.
// Examples
//     "foefet" is an anagram of "toffee"
//     "Buckethead" is an anagram of "DeathCubeK"

// My solution
const isAnagram = function( test, original ) {
  const transform = str => str.toLowerCase().split( '' ).sort().join()
  return ( transform( test ) === transform( original ) )
}

// Tests
console.log(isAnagram("foefet", "toffee")); //, true, 'The word foefet is an anagram of toffee')
console.log(isAnagram("Buckethead", "DeathCubeK")); //, true, 'The word Buckethead is an anagram of DeathCubeK')
console.log(isAnagram("Twoo", "WooT")); //, true, 'The word Twoo is an anagram of WooT')

console.log(isAnagram("dumble", "bumble")); //, false, 'Characters do not match for test case dumble, bumble')
console.log(isAnagram("ound", "round")); //, false, 'Missing characters for test case ound, round')
console.log(isAnagram("apple", "pale")); //, false, 'Same letters, but different count')

// Others' solutions

// String.prototype.sortLetters = function() {
//   return this.toLowerCase().split('').sort().join('');
// }
// var isAnagram = function(test, original) {
//   return test.sortLetters() == original.sortLetters();
// };
