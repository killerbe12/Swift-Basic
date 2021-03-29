/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

/*:
 ## Basic Control Flow
 ### Challenge 1
 What’s wrong with the following code?
 
 ```
 let firstName = "Matt"
 
 if firstName == "Matt" {
   let lastName = "Galloway"
 } else if firstName == "Ray" {
   let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 ```
 */
// your answer is here
// A correct solution:
// your code is here
/*:
 ### Challenge 2
 In each of the following statements, what is the value of the Boolean `answer` constant?
 */

//let answer1 = true && true
// your answer is here

//let answer2 = false || false
// your answer is here

//let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// your answer is here

//let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// your answer is here

/*: 
 ### Challenge 3
 Given the coefficients a, b and c, calculate the solutions to a quadratic equation with these coefficients. Take into account the different number of solutions (0, 1 or 2). If you need a math refresher, this Wikipedia article on the quadratic equation will help [https://en.wikipedia.org/wiki/Quadratic_formula](https://en.wikipedia.org/wiki/Quadratic_formula).
 */
// a*x^2 + b*x + c = 0
// x = ?

let a = 1.0
let b = -5.0
let c = 6.0

// your code is here

/*:
 ### Challenge 4
 Given a month (represented with a `String` in all lowercase) and the current year (represented with an `Int`), calculate the number of days in the month. Remember that because of leap years, "february" has 29 days when the year is a multiple of 4 but not a multiple of 100.  February also has 29 days when the year is a multiple of 400.
 */
// monthes: january, february, march, april, may, june, july, august, september, october, november, december
let month = "february"
let year = 2016

// your code is here

/*:
 ### Challenge 5
 
 In the following for loop:
 
 ```
 var sum = 0
 for i in 0...5 {
 sum += i
 }
 ```
 What will be the value of `sum`, and how many iterations will happen?
 */

// sum = you answer here

/*:
 ### Challenge 6
 
 In the while loop below:
 ````
 var aLotOfAs = ""
 while aLotOfAs.count < 10 {
 aLotOfAs += "a"
 }
 ````
 How many instances of the character “a” will there be in `aLotOfAs`? Hint: `aLotOfAs.count` will tell you how many characters there are in the string `aLotOfAs`.
 */

// aLotOfAs contains <your answer is here>

/*:
 ### Challenge 7
 Consider the following switch statement:
 
 ```
 switch coordinates {
 case let (x, y, z) where x == y && y == z:
 print("x = y = z")
 case (_, _, 0):
 print("On the x/y plane")
 case (_, 0, _):
 print("On the x/z plane")
 case (0, _, _):
 print("On the y/z plane")
 default:
 print("Nothing special")
 }
 ```
 
 What will this code print when coordinates is each of the following?
 ```
 let coordinates = (1, 5, 0)
 let coordinates = (2, 2, 2)
 let coordinates = (3, 0, 1)
 let coordinates = (3, 2, 5)
 let coordinates = (0, 2, 4)
 ```
 */
let coordinates = (1, 5, 0)
// your answer is here

//let coordinates = (2, 2, 2)
// your answer is here

//let coordinates = (3, 0, 1)
// your answer is here

//let coordinates = (3, 2, 5)
// your answer is here

//let coordinates = (0, 2, 4)
// your answer is here

//switch coordinates {
//case let (x, y, z) where x == y && y == z:
//    print("x = y = z")
//case (_, _, 0):
//    print("On the x/y plane")
//case (_, 0, _):
//    print("On the x/z plane")
//case (0, _, _):
//    print("On the y/z plane")
//default:
//    print("Nothing special")
//}

/*:
 ### Challenge 8
 Declare a closed range and half-open range.
 */
// your code is here
/*:
 A closed range can never be empty. Why?
 */
// your answer is here

/*:
 ### Challenge 9
 Print a countdown from 10 to 0.  (Note: do not use the `reversed()` method, which will be introduced later.)
 */
// your code is here
/*:
 ### Challenge 10
 
 Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.  (Note: do not use the `stride(from:to:by:)` function, which will be introduced later.)
 */
// your code is here
