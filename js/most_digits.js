// Find the number with the most digits.
// If two numbers in the argument array have the same number of digits, return the first one in the array.

// My solution
function findLongest(array){
  let biggestNumber = 0 ;
  let result;
  for (nb of array) {
    let numberOfDigits = nb.toString().split('').length;
    if (biggestNumber < numberOfDigits) {
      biggestNumber = numberOfDigits;
      result = nb;
    }
  }
  return result;
}

// Tests
console.log(findLongest([1, 10, 100])) //, 100)
console.log(findLongest([9000, 8, 800])) //, 9000)
console.log(findLongest([8, 900, 500])) //, 900)


// Others' solutions

// function findLongest(array){
//   return array.reduce((res, curr) => (String(res).length < String(curr).length) ? curr : res);
// }

// function findLongest(array){
//   let num = '0';
//   for(let i=0; i<array.length; i++) {
//     let string = array[i].toString();
//     if(string.length > num.length) {
//       num = string;
//     }
//   }
//   return parseInt(num);
// }
