// In Russia regular bus tickets usually consist of 6 digits. The ticket is called lucky when the sum of the first three digits equals to the sum of the last three digits. Write a function to find out whether the ticket is lucky or not. Return true if so, otherwise return false. Consider that input is always a string. Watch examples below.

// my solution :
function isLucky(ticket) {
  if (ticket.length !== 6 || /[a-z]/i.test(ticket)) return false;

  arrayNum = ticket.split('');

  firstArray = arrayNum.filter( (number, ind) => ind < 3).map( (el) => parseInt(el)).reduce( (total, el) => total + el );
  secondArray = arrayNum.filter( (number, ind) => ind >= 3).map( (el) => parseInt(el)).reduce( (total, el) => total + el );
  return (firstArray === secondArray);
}

// tests
console.log(isLucky('123321'))// => 1+2+3 = 3+2+1 => true // The ticket is lucky
console.log(isLucky('12341234')) //=> false // Only six-digit numbers allowed :(
console.log(isLucky('12a21a'))// => false // Letters are not allowed :(
console.log(isLucky('100200'))// => false // :(
console.log(isLucky('22'))// => false // :(
console.log(isLucky('abcdef'))// => false // :(


// others' solutions

// function isLucky(ticket) {
//   return (/^\d{6}$/).test(ticket)
//     ? ticket.slice(0, 3).split('').reduce((sum, e) => sum + +e, 0) === ticket.slice(3, 6).split('').reduce((sum, e) => sum + +e, 0)
//     : false
// }

// function isLucky(ticket) {
// if(ticket.length!==6)return false

//   const left=ticket.slice(0,3)
//   const right=ticket.slice(-3)

//   function sumOfDigits(d){
//   return d.split('').reduce((a,b)=>a+ +b,0)
//   }
//   return sumOfDigits(left) === sumOfDigits(right)
// }
