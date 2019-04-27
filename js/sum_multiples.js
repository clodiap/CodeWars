// Your task is to write function findSum.
// Upto and including n, this function will return the sum of all multiples of 3 and 5.
// For example:
// findSum(5) should return 8 (3 + 5)
// findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

// My solution
function findSum(n) {
  // trouver nb multiples de 3 et 5 de 3 à n
  // les stocker dans un tableau
  // faire la somme
  result = [];
  for (let i = 3; i <= n; i++)
    if ( i % 3 === 0 || i % 5 === 0) result.push(i)

  return result.reduce( (total, nb) => total + nb );
}

// tests
console.log(findSum(5)) //, 8);
console.log(findSum(10)) //, 33);

// Others' solutions

// function findSum(n) {
//   let result = 0;
//   for (let i = 0; i <= n; i += 1) {
//     if (i % 3 ===0 || i % 5 === 0) result += i
//   }
//   return result
// }
