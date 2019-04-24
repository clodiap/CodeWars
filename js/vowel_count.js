// Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, and u as vowels for this Kata.

// The input string will only consist of lower case letters and/or spaces.


// my solution
function getCount(str) {
  let vowelsCount = 0;
  let arrayStr = str.split('');
  for (letter of arrayStr)
    if (letter.match(/[aeiou]/i))
      vowelsCount += 1;

  return vowelsCount;
}

console.log(getCount("abracadabra")); // 5


// others' solutions

// function getCount(str) {
//   return (str.match(/[aeiou]/ig)||[]).length;
// }

// function getCount(str) {
//   return str.replace(/[^aeiou]/gi, '').length;
// }

//function getCount(str) {
//  return str.split('').filter(c => "aeiouAEIOU".includes(c)).length;
// }
