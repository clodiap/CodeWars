// Give you a number array numbers and a number c.
// Find out a pair of numbers(we called them number a and number b) from the array numbers, let a*b=c, result format is an array [a,b]
// The array numbers is a sorted array, value range: -100...100
// The result will be the first pair of numbers, for example,findAB([1,2,3,4,5,6],6) should return [1,6], instead of [2,3]
// Please see more example in testcases.

function findAB(array, number) {
  let result = [];

  for(let index = 0; index < array.length; index++){
    for (let index2 = index +1; index2 < array.length; index2++) {
      if (array[index] * array[index2] === number) {
        result.push(array[index], array[index2]);
        return result;
      }
    }
  }
  return null;
}

// tests
console.log(findAB([1,2,3,4,5,6],6)); // [1,6]
console.log(findAB([1,2,3],3)); // [1,3]
console.log(findAB([0,0,2],4)); // null
console.log(findAB([1,2,3],7)); // null
console.log(findAB([0,0,2,2],4)); // [2,2]
console.log(findAB([-3,-2,-1,0,1,2,3,4],4)); // [1,4]

// others' solutions

// function findAB(numbers,c){
//   for(var i=0; i<numbers.length-1; i++)
//     for(var j=(i+1); j<numbers.length; j++)
//       if(numbers[i]*numbers[j]==c)  return[numbers[i],numbers[j]];
//   return null;
// }

// function findAB([a, ...numbers], c){
//   if (a === undefined) return null
//   return numbers.indexOf(c / a) >= 0 ? [a, ~~(c / a)] : findAB(numbers, c)
// }
