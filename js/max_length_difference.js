// You are given two arrays a1 and a2 of strings. Each string is composed with letters from a to z. Let x be any string in the first array and y be any string in the second array.

// Find max(abs(length(x) − length(y)))
// If a1 and/or a2 are empty return -1 in each language except in Haskell (F#) where you will return Nothing (None).

// #Example:
// a1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
// a2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
// mxdiflg(a1, a2) --> 13

// My solution
function mxdiflg(a1, a2) {
    if (a1.length === 0 || a2.length === 0)
        return -1;
    let a1num = a1.map( item => item.length ), a2num = a2.map( item => item.length );
    let minA1 = Math.min(...a1num), maxA1 = Math.max(...a1num);
    let minA2 = Math.min(...a2num), maxA2 = Math.max(...a2num);
    return Math.abs(minA1 - maxA2) > Math.abs(maxA1 - minA2) ? Math.abs(minA1 - maxA2) : Math.abs(maxA1 - minA2);
}

// tests
var s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"];
var s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"];
console.log(mxdiflg(s1, s2)); //, 13)


// Others' solutions

// function mxdiflg(a1, a2) {
//   if (a1.length === 0 || a2.length === 0) return -1
//   let l1 = a1.map(str => str.length)
//   let l2 = a2.map(str => str.length)
//   return Math.max(Math.max(...l1) - Math.min(...l2), Math.max(...l2) - Math.min(...l1))
// }

// function mxdiflg(a1, a2) {
//     if(!a1.length||!a2.length)return -1;
//     a1.sort((a,b)=>a.length-b.length);
//     a2.sort((a,b)=>a.length-b.length)
//     return Math.max(Math.abs(a1[0].length-a2[a2.length-1].length),Math.abs(a2[0].length-a1[a1.length-1].length));
// }
