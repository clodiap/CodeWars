// Last night you had to study, but decided to party instead. Now there is a black and white photo of you that is about to go viral. You cannot let this ruin your reputation, so you want to apply box blur algorithm to the photo to hide its content.

// The algorithm works as follows: each pixel x in the resulting image has a value equal to the average value of the input image pixels' values from the 3 × 3 square with the center at x. All pixels at the edges are cropped.

// As pixel's value is an integer, all fractions should be rounded down.
// Example

// For image = [[1, 1, 1], [1, 7, 1], [1, 1, 1]] the output should be [[1]].

// In the given example all boundary pixels were cropped, and the value of the pixel in the middle was obtained as (1 + 1 + 1 + 1 + 7 + 1 + 1 + 1 + 1) / 9 = 15 / 9 = ~rounded down~ = 1.

function boxBlur(image) {
    let squareRows = [];
    const squareNb = image[0].length - 2;

    while (image.length >= 3) {
        let squares = [];
        for (let i = 0; i < squareNb; i++) {
            let square = [];

            for (let j  = 0; j < 3; j++) {
              for (let k = 0; k < 3; k++)
                square.push(image[j][k+i]);
            }

            squares.push(square);
        }

        squareRows.push([...squares]);
        image.shift();
    }
    let result = squareRows.map( row => row.map( arr => {
      return arr.reduce( (acc, nb) => {
        return (acc + nb);
      });
    }));

    return result.map( arr => arr.map(nb => Math.floor(nb / 9)));

}

console.log(boxBlur([[1,1,1],
                   [1,7,1],
                   [1,1,1]]));//.to eq([[1]])
console.log(boxBlur([[0,18,9],
               [27,9,0],
               [81,63,45]]));//.to eq([[28]])
console.log(boxBlur([[36,0,18,9],
               [27,54,9,0],
               [81,63,72,45]]));//.to eq([[40,30]])
console.log(boxBlur([[7,4,0,1],
               [5,6,2,2],
               [6,10,7,8],
               [1,4,2,0]]));//.to eq([[5,4],[4,4]])
console.log(boxBlur([[36,0,18,9,9,45,27],
               [27,0,54,9,0,63,90],
               [81,63,72,45,18,27,0],
               [0,0,9,81,27,18,45],
               [45,45,27,27,90,81,72],
               [45,18,9,0,9,18,45],
               [27,81,36,63,63,72,81]]));//.to eq([[39,30,26,25,31],
                                               // [34,37,35,32,32],
                                               // [38,41,44,46,42],
                                               // [22,24,31,39,45],
                                               // [37,34,36,47,59]])

// Others' solutions

// var boxBlur = image => {
//   var result = [];

//   for (var i = 1; i < image.length - 1; i++)
//   {
//     var temp = [];

//     for (var j = 1; j < image[i].length - 1; j++)
//       temp.push(Math.floor((image[i][j] + image[i][j - 1] + image[i - 1][j - 1] +
//                             image[i - 1][j] + image[i - 1][j + 1] + image[i][j + 1] +
//                             image[i + 1][j + 1] + image[i + 1][j] + image[i + 1][j - 1]) / 9));

//     result.push(temp);
//   }

//   return result;
// }

// function boxBlur(image) {
//     let blurredImage = [];
//     let eachRow = [];
//     let sum;
//     for (let y = 0; y <= image.length - 3; y++) {
//         for (let x = 0; x <= image[0].length - 3; x++) {
//             sum = 0;
//             for (let j = y; j < 3 + y; j++) {
//                 for (let k = x; k < 3 + x; k++) {
//                     sum += image[j][k];
//                 }
//             }
//             eachRow.push(Math.floor(sum/9));
//         }
//         blurredImage.push(eachRow);
//         eachRow = [];
//     }
//     return blurredImage;
// }

// function boxBlur(img) {
//     return img.slice(1,-1).map((r,i) => r.slice(1,-1).map((c,j,x) => {
//         for (x=0, r=0; r<3; r++) for (c=0; c<3; c++) x += img[i+r][j+c];
//         return x/9|0;
//     }));
// }
