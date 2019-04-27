// We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).
// So given a string "super", we should return a list of [2, 4].
// Some examples:
// Mmmm  => []
// Super => [2,4]
// Apple => [1,5]
// YoMama -> [1,2,4,6]
// *NOTE: Vowels in this context refers to English Language Vowels - a e i o u y *
// NOTE: this is indexed from [1..n] (not zero indexed!)

// my solution
function vowelIndices(word){
  const wordArray = word.split('');
  let result = [];
  word.split('').map( ( letter, index ) => {
    if ( letter.match(/[aeiouy]/i) ) {
      result.push( index + 1 );
    }
  })
  return result;
}

// tests

console.log(vowelIndices("mmm")); //, []);
console.log(vowelIndices("apple")); //, [1,5]);
console.log(vowelIndices("super")); //, [2,4]);
console.log(vowelIndices("orange")); //, [1,3,6]);
console.log(vowelIndices("supercalifragilisticexpialidocious")); //, [2,4,7,9,12,14,16,19,21,24,25,27,29,31,32,33]);


// Others' solutions

// function vowelIndices(word) {
//   var arr = [];
//   for(var i = 0; i < word.length; i++) {
//     if(/[aeioyu]/i.test(word[i])) {
//       arr.push(i+1);
//     }
//   }
//   return arr;
// }

// function vowelIndices(word) {
//   return [...word].reduce(function(a, c, i) {
//     return /[aeiouy]/i.test(c) ? a.concat([i+1]): a
//   }, []);
// }

// function vowelIndices(word){
//   const vowels = ['a', 'e', 'i', 'o', 'u', 'y'];
//   const isVowel = letter => vowels.includes(letter);
//   const vowelsToIndex = (letter, index) => isVowel(letter) ? index + 1 : null;
//   const removeNull = item => item !== null;

//   return word.toLowerCase().split('').map(vowelsToIndex).filter(removeNull);
// }
