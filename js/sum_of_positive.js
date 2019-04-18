// You get an array of numbers, return the sum of all of the positives ones.
// Example [1,-4,7,12] => 1 + 7 + 12 = 20
// Note: if there is nothing to sum, the sum is default to 0.

// my solutions :
function positiveSum2(arr) {
  let total = 0;

  for (nb of arr) {
    if (nb > 0) {
      total += nb;
    }
  }

  return total;
}

// with reduce method

function positiveSum(arr) {
  return arr.filter( (nb) => nb > 0).reduce( (total, amount) => total + amount, 0);
}

// tests :
console.log(positiveSum([1,2,3,4,5])); // 15
console.log(positiveSum([1,-2,3,4,5])); //13
console.log(positiveSum([])); // 0
console.log(positiveSum([-1,-2,-3,-4,-5])); // 0
console.log(positiveSum([-1,2,3,4,-5])); // 9

// Others' interesting solutions :

// function positiveSum(arr) {
//    return arr.reduce((a,b)=> a + (b > 0 ? b : 0),0);
// }

// const positiveSum = (arr) => arr.reduce((sum, n) => n > 0 ? sum + n : sum, 0);
