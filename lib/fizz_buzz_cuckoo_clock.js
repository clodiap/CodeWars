//     When a minute is evenly divisible by three, the clock will say the word "Fizz".
//     When a minute is evenly divisible by five, the clock will say the word "Buzz".
//     When a minute is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:
//         On the hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hour.
//         On the half hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.
//     With minutes that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.

// Your input will be a string containing hour and minute values in 24-hour time, separated by a colon, and with leading zeros. For example, 1:34 pm would be "13:34".

// Your return value will be a string containing the combination of Fizz, Buzz, Cuckoo, and/or tick sounds that the clock needs to make at that time, separated by spaces. Note that although the input is in 24-hour time, cuckoo clocks' cuckoos are in 12-hour time.

// Some examples
// "13:34"       "tick"
// "21:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
// "11:15"       "Fizz Buzz"
// "03:03"       "Fizz"
// "14:30"       "Cuckoo"
// "08:55"       "Buzz"
// "00:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
// "12:00"       "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"

// my solution
function fizzBuzzCuckooClock(time) {
    let timeArr = time.split(":");
    timeArr = timeArr.map(str => parseInt(str));
    const minutes = timeArr[1];

    if (minutes === 0) {
        let hour = timeArr[0];
        if (hour > 12) {
            hour -= 12;
        } else if (hour === 0) {
            hour = 12;
        }
        let cuckooStr = "Cuckoo ".repeat(hour);
        return cuckooStr.trimRight();
    }
    if (minutes === 30) return "Cuckoo";
    if (minutes % 3 === 0 && minutes % 5 === 0) return "Fizz Buzz";
    if (minutes % 3 === 0) return "Fizz";
    if (minutes % 5 === 0) return "Buzz";

    return "tick";
}

// tests
console.log(fizzBuzzCuckooClock("13:34")); //, "tick");
console.log(fizzBuzzCuckooClock("21:00")); //, "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo");
console.log(fizzBuzzCuckooClock("11:15")); //, "Fizz Buzz");
console.log(fizzBuzzCuckooClock("03:03")); //, "Fizz");
console.log(fizzBuzzCuckooClock("14:30")); //, "Cuckoo");
console.log(fizzBuzzCuckooClock("08:55")); //, "Buzz");
console.log(fizzBuzzCuckooClock("00:00")); //, "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo");
console.log(fizzBuzzCuckooClock("12:00")); //, "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo");

// Others' solutions

// function fizzBuzzCuckooClock(time) {
//   let [hour, minute] = time.split(':');
//   return minute ==  0 ? "Cuckoo ".repeat(hour % 12 || 12).trim() :
//     minute      == 30 ? "Cuckoo" :
//     minute % 15 ==  0 ? "Fizz Buzz" :
//     minute % 3  ==  0 ? "Fizz" :
//     minute % 5  ==  0 ? "Buzz" :
//                         "tick";
// }

// const fizzBuzzCuckooClock = time => {
//     let t = time.split(':');
//     switch (t[1]) {
//         case '00':
//             return 'Cuckoo '.repeat(t[0]%12).trim() || 'Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo';
//         case '30':
//             return 'Cuckoo';
//     }
//     if (t[1] % 15 == 0) return "Fizz Buzz";
//     if (t[1] % 5 == 0) return "Buzz";
//     if (t[1] % 3 == 0) return "Fizz";
//     return "tick";
// }
