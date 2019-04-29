// Given: an array containing hashes of names
// Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

// Example:
// list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
// // returns 'Bart, Lisa & Maggie'

// list([ {name: 'Bart'}, {name: 'Lisa'} ])
// // returns 'Bart & Lisa'

// list([ {name: 'Bart'} ])
// // returns 'Bart'

// list([])
// // returns ''

// Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

// My solution

function list(names){
  nameArray = [];

  for ( let name of names )
    nameArray.push( name.name )

  const lastTwoNames = nameArray.slice( nameArray.length - 2, nameArray.length );
  const firstNames = nameArray.slice( 0, nameArray.length - 2 );

  return ( firstNames.length < 1 ) ? lastTwoNames.join( ' & ') : firstNames.join( ', ') + ', ' + lastTwoNames.join( ' & ') ;
}

// Tests

console.log(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])); //, 'Bart, Lisa, Maggie, Homer & Marge',
console.log(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'}])); //, 'Bart, Lisa & Maggie',
console.log(list([{name: 'Bart'},{name: 'Lisa'}])); //, 'Bart & Lisa',
console.log(list([{name: 'Bart'}])); //, 'Bart', "Wrong output for a single name")
console.log(list([])); //, '', "Must work with no names")

// Others' solutions

// function list(names){
//   return names.reduce(function(prev, current, index, array){
//     if (index === 0){
//       return current.name;
//     }
//     else if (index === array.length - 1){
//       return prev + ' & ' + current.name;
//     }
//     else {
//       return prev + ', ' + current.name;
//     }
//   }, '');
//  }

// function list(names) {
//   var xs = names.map(p => p.name)
//   var x = xs.pop()
//   return xs.length ? xs.join(", ") + " & " + x : x || ""
// }

// function list(names){
//   return names
//            .map((item) => item.name)
//            .join(', ')
//            .replace(/,\s([^,]+)$/, ' & $1');
// }
