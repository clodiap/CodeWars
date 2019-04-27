// Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return a or b.

// Note: a and b are not ordered!
// Examples
// GetSum(1, 0) == 1   // 1 + 0 = 1
// GetSum(1, 2) == 3   // 1 + 2 = 3
// GetSum(0, 1) == 1   // 0 + 1 = 1
// GetSum(1, 1) == 1   // 1 Since both are same
// GetSum(-1, 0) == -1 // -1 + 0 = -1
// GetSum(-1, 2) == 2  // -1 + 0 + 1 + 2 = 2

// My solution
function GetSum( a,b ) {

  const result = ( smaller, greater ) => {
    let sum = 0;
    for ( let i = smaller; i <= greater; i++)
      sum += i;

    return sum;
  }

  return ( a < b) ? result( a, b) : result( b, a);
}


// tests

console.log(GetSum(1, 0)); // == 1   // 1 + 0 = 1
console.log(GetSum(1, 2)); // == 3   // 1 + 2 = 3
console.log(GetSum(0, 1)); // == 1   // 0 + 1 = 1
console.log(GetSum(1, 1)); // == 1   // 1 Since both are same
console.log(GetSum(-1, 0)); // == -1 // -1 + 0 = -1
console.log(GetSum(-1, 2)); // == 2  // -1 + 0 + 1 + 2 = 2

// Others' solutions

// const GetSum = (a, b) => {
//   let min = Math.min(a, b),
//       max = Math.max(a, b);
//   return (max - min + 1) * (min + max) / 2;
// }

// function GetSum( a,b )
// {
//    if (a == b) return a;
//    else if (a < b) return a + GetSum(a+1, b);
//    else return a + GetSum(a-1,b);
// }
