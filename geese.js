function gooseFilter (birds) {
  const geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];

  let result = [];
  for (bird of birds) {
    if ( !(checkAvailability( geese, bird )) )
      result.push( bird );
  }
  return result;
};

function checkAvailability(arr, val) { // Checking whether a value exists in an array
  return arr.some(function(arrVal) {
    return val === arrVal;
  });
}
console.log(gooseFilter(["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]));

// Autres solutions intéressantes (CodeWars) :

// function gooseFilter (birds) {
//   var geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];
//   return birds.filter(b => !geese.includes(b));
// };

// function gooseFilter (birds) {
//   var geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];
//   return birds.filter( bird => geese.indexOf(bird) < 0 );
// };

// const GEESE = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];
// const gooseFilter = birds => birds.filter(bird => !GEESE.includes(bird));

// function gooseFilter (birds) {
//   var geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"];
//   return gooseFilter.pop(geese);
//   // return an array containing all of the strings in the input array except those that match strings in geese
// };
