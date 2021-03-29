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

/*:
 ## Arrays
 ### Challenge 1.
 Which of the following are valid statements?
*/
//let array1 = [Int]()      // Valid statement
//let array2 = []           // Not valid statement
//let array3: [String] = [] // Valid statement
//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid
//print(array4[0])  // Valid statement
//print(array4[5])  // Not valid statement
//array4[1...2]     // Valid statement
//array4[0] = 4     // Not valid statement
//array4.append(4)  // Not valid statement
//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?
//array5[0] = array5[1]                 // Valid statement
//array5[0...1] = [4, 5]                // Valid statement
//array5[0] = "Six"                     // Not valid statement
//array5 += 6                           // Not valid statement
//for item in array5 { print(item) }    // Valid statement
/*:
 ### Challenge 2
 Write a function that removes the first occurrence of a given integer from an array of integers.
 This is the signature of the function:
 
 ```
 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 ```
*/
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var tempArray = array
    
    for i in 0..<tempArray.count {
        if tempArray[i] == item {
            tempArray.remove(at: i)
            break
        }
    }
    return tempArray
}

//print(removingOnce(2, from: [3, 4, 6, 2, 7, 0 ,9]))
/*:
 ### Challenge 3
 Write a function that removes all occurrences of a given integer from an array of integers. 
 This is the signature of the function:
 
```
 func removing(_ item: Int, from array: [Int]) -> [Int]
```
*/
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var tempArray = array
    var index = 0;
    
    while index < tempArray.count {
        if tempArray[index] == item {
            tempArray.remove(at: index)
            guard index > 0 else { continue }
            index -= 1
            continue
        }
        index += 1
    }
    return tempArray
}

//print(removing(2, from: [2, 2, 3, 4, 6, 2, 7, 0, 2, 9, 2, 2]))
/*:
 ### Challenge 4
 Arrays have a `reversed()` method that returns an array holding the same elements as the original array, in reverse order. 
 Write a function that does the same thing, without using `reversed()`. This is the signature of the function:

 ```
 func reversed(_ array: [Int]) -> [Int]
 ```
*/
func reversed(_ array: [Int]) -> [Int] {
    var tempArray = [Int]()
    var reverseIndex = array.count-1
    
    while reverseIndex > -1 {
        tempArray.append(array[reverseIndex])
        reverseIndex -= 1
    }
    
    return tempArray
}

//print(reversed([1, 2, 3, 4, 5, 6, 7]))
/*:
 ### Challenge 5
 Write a function that returns the middle element of an array.
 When array size is even, return the first of the two middle elements.
 
 ```swift
 func middle(_ array: [Int]) -> Int?
 ```
*/
func middle(_ array: [Int]) -> Int? {
    guard array.count > 0 else { return nil }

    var middleNumber = 0
    if array.count % 2 == 1 {
        middleNumber = array.count / 2
    } else {
        middleNumber = array.count / 2 - 1
    }
    
    return array[middleNumber]
}

//print(middle([5, 8, 0]))
/*:
 ### Challenge 6
 
 Write a function that calculates the minimum and maximum value in an array of integers. 
 Calculate these values yourself, do not use the methods `min` and `max`. 
 Return `nil` if the given array is empty.
 
 This is the signature of the function:

```
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
```
 
 */
func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
    guard numbers.count > 0 else { return nil }
    
    var minimalValue = numbers[0]
    var maximumValue = numbers[0]
        
    for i in 0..<numbers.count {
        if numbers[i] > maximumValue {
            maximumValue = numbers[i]
        } else if numbers[i] < minimalValue {
            minimalValue = numbers[i]
        }
    }
    
    return (minimalValue, maximumValue)
}

//print(minMax(of: [-89, 98]))
/*:
 ## Dictionaries
 ### Challenge 7
 Which of the following statements are valid?
 */
//let dict1: [Int, Int] = [:]   // Not valid statement
//let dict2 = [:]               // Not valid statement
//let dict3: [Int: Int] = [:]   // Valid statement
//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:
//dict4[1]          // Not valid statement
//dict4["One"]      // Valid statement
//dict4["Zero"] = 0 // Not valid statement
//dict4[0] = "Zero" // Not valid statement
//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
dict5["NY"]                   // Valid statement
dict5["WA"] = "Washington"    // Valid statement
dict5["CA"] = nil             // Valid statement
/*:
 ### Challenge 8
 Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".
 */
var dictionary = ["NY": "New York", "CA": "California"]

func longerEight(dict: [String: String]) -> [String] {
    var wordsLongerEight = [String]()
    
    for i in dict {
        if i.value.count > 8 {
            wordsLongerEight.append(i.value)
        }
    }
    
    return wordsLongerEight
}

//print(longerEight(dict: dictionary))
/*:
 ### Challenge 9
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 This is the signature of the function:
 ```
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 ```
 */
var dictUS = ["NY": "New York", "CA": "California", "SPB": "Saint-Petersburg 1", "MSK": "Moskow 1"]
var dictSNG = ["GNA": "Grodno", "MSK": "Moskow 2", "SPB": "Saint-Petersburg 2"]

func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]{
    var dict: [String: String] = [:]
    
    dict.merge(dict1) { (current, _) in current }
    dict.merge(dict2) { (_, new) in new }
    
    return dict
}

//print(combine(dict1: dictUS, with: dictSNG))
/*:
 ### Challenge 10
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary. This is the function signature:
 ```
 func occurrencesOfCharacters(in text: String) -> [Character: Int]
 ```
 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/
/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/

//func occurrencesOfCharactersBonus(in text: String) -> [Character: Int] {
//  var occurrences: [Character: Int] = [:]
//  for character in text {
//    occurrences[character, default: 0] += 1
//  }
//  return occurrences
//}
/*:
 ### Challenge 11
 Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.
 This is the function signature:
 ```
 func isInvertible(_ dictionary: [String: Int]) -> Bool
 ```
 */
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var boolean = true
    
    for i in dictionary {
        for j in dictionary {
            if i.key != j.key && i.value == j.value {
                boolean = false
                break
            }
        }
    }
    
    return boolean
}

//print(isInvertible(["GNA": 1, "MSK": 2, "NY": 0, "CA": 3]))
