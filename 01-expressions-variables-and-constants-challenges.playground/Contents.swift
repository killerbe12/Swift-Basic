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
## Expressions, Variables & Constants Challenges

### Challenge 1
 Declare a constant `exercises` with value 9 and a variable `exercisesSolved` with value 0. Increment this variable every time you solve an exercise (including this one).
 */
print("Exersice #\(exercisesSolved)")

let exercises: Int = 9
var exercisesSolved: Int = 0
exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 2
 Given the following code:
 ```swift
 age = 16
 print(age)
 age = 30
 print(age)
 ```
  Declare `age` so that it compiles.  Did you use `var` or `let`?
*/
print("\nExersice #\(exercisesSolved)")

// I am used var because let we use with constants
var age = 16
print(age)
age = 30
print(age)

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 3
 Consider the following code:

```swift
let a: Int = 46
let b: Int = 10
```
 Work out what `answer` equals when you add the following lines of code:
```swift
// 1
let answer1: Int = (a * 100) + b
// 2
let answer2: Int = (a * 100) + (b * 100)
// 3
let answer3: Int = (a * 100) + (b / 10)
```
*/
print("\nExersice #\(exercisesSolved)")

let a: Int = 46
let b: Int = 10

// answer1 equals 4610
let answer1: Int = (a * 100) + b
print("Answer 1: \(answer1)")

// answer2 equals 5600
let answer2: Int = (a * 100) + (b * 100)
print("Answer 2: \(answer2)")

// answer3 4601
let answer3: Int = (a * 100) + (b / 10)
print("Answer 3: \(answer3)")

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 4
 Add parentheses to the following calculation. The parentheses should show the order in which the operations are performed and should not alter the result of the calculation.
 */
5 * 3 - 4 / 2 * 2
/*:
 Solution:
 */
print("\nExersice #\(exercisesSolved)")

let result = (5 * 3) - ((4 / 2) * 2)

print("Results: \(result)")

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 5
 Declare two constants `x` and `y` of type `Double` and assign both a value. Calculate the average of `x` and `y` and store the result in a constant named `average`.
 */
print("\nExersice #\(exercisesSolved)")

let x: Double = 1
let y: Double = 1
let average = (x + y) / 2

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 6
 A temperature expressed in ??C can be converted to ??F by multiplying by 1.8 then incrementing by 32. In this exercise, you will do the reverse: convert a temperature from ??F to ??C.
 
 Declare a constant named `fahrenheit` of type `Double` and assign it a value. Calculate the corresponding temperature in ??C and store the result in a constant named `celcius`.
 */
print("\nExersice #\(exercisesSolved)")

let fahrenheit: Double = 120
let celcius: Double = (fahrenheit - 32) / 1.8

print("??F value equals: \(fahrenheit), ??C value equals: \(celcius)")

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 7
 Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7.
 
 Declare a constant `position` and assign it a value between 0 and 63. Calculate the corresponding row and column numbers and store the results in constants named `row` and `column`.
 */
print("\nExersice #\(exercisesSolved)")

let chessboardSquare = 20
let row = chessboardSquare / 7
let column = chessboardSquare % 7
let rowAndColumn = [row, column]

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
 ### Challenge 8
 A circle is made up of 2???? radians, corresponding with 360 degrees. Declare a constant `degrees` of type `Double` and assign it an initial value. Calculate the corresponding angle in radians and store the result in a constant named `radians`.
 */
print("\nExersice #\(exercisesSolved)")

let degrees: Double = 125
let radians: Double = (degrees * 2 * 3.14) / 360

print("?? value equals: \(degrees), Radians value equals: \(radians)")

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
/*:
### Challenge 9
 Declare four constants named `x1`, `y1`, `x2` and `y2` of type `Double`. These constants represent the 2-dimensional coordinates of two points. Calculate the distance between these two points and store the result in a constant named `distance`.
 */
print("\nExersice #\(exercisesSolved)")

let x1: Double = 1
let y1: Double = 7
let x2: Double = 3
let y2: Double = 5

let distance = (pow(x2 - x1, 2) + pow(y2 - y1, 2)).squareRoot()
print("Distance equals: \(distance)")

exercisesSolved += 1
print("Soleved exercises: \(exercisesSolved)")
