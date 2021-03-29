/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

/*:

 ## Structures

 ### Challenge
 Write the engine for a Battleship-like game. If you aren’t familiar with Battleship, see here: [http://bit.ly/2nT3JBU](http://bit.ly/2nT3JBU)
 * Use an (x, y) coordinate system for your locations and model using a structure.
 * Ships should also be modelled with structures. Record an origin, direction and length.
 * Each ship should be able to report if a “shot” has resulted in a “hit”.
*/
typealias Direction = String
let Right: Direction = "Right"
let Down: Direction = "Down"

//enum Direction: String {
//    case right = "Right"
//    case down = "Down"
//}

struct Coordinate {
  let x: Int
  let y: Int
}

struct Ship {
    let origin: Coordinate
    let direction: Direction
    let length: Int
    let name: String
}

struct Board {
    var ships: [Ship] = []
}
/*:
 Set up ships.
 */
let patrolBoat = Ship(origin: Coordinate(x: 2, y: 2), direction: Right, length: 2, name: "PatrolBoat")
let battleship = Ship(origin: Coordinate(x: 5, y: 3), direction: Down, length: 4, name: "Battleship")
let submarine = Ship(origin: Coordinate(x: 0, y: 0), direction: Down, length: 3, name: "Submarine")
/*:
  Set up the board.
  */
var board = Board()
board.ships.append(contentsOf: [patrolBoat, battleship, submarine])
/*:
 Play the game.
 */
extension Ship {
    func getAllAvailableCoordinates() -> [Coordinate] {
        var allCoordinates = [Coordinate]()
        allCoordinates.append(origin)
        
        if length > 1 {
            for i in 1..<length {
                switch direction {
                case Right:
                    allCoordinates.append(Coordinate(x: origin.x + i, y: origin.y))
                case Down:
                    allCoordinates.append(Coordinate(x: origin.x, y: origin.y + i))
                default:
                    print("Error")
                }
            }
        }
        return allCoordinates
    }
}

extension Board {
    func fire(location: Coordinate) -> String {
        for ship in ships {
            if ship.getAllAvailableCoordinates().contains(where: { $0.x == location.x && $0.y == location.y }) {
                return "Hit on the \(ship.name)"
            }
        }
        return "Miss..."
    }
}
    
board.fire(location: Coordinate(x: 2, y: 2)) // Hit on the patrolBoat

board.fire(location: Coordinate(x: 2, y: 3)) // Miss...

board.fire(location: Coordinate(x: 5, y: 6)) // Hit on the battleship

board.fire(location: Coordinate(x: 5, y: 7)) // Miss...
