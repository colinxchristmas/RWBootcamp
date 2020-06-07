/*
* Copyright (c) 2015 Razeware LLC
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
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import Foundation

class BullsEyeGame {  // might be class?
  var red: Int = 0
  var green: Int = 0
  var blue: Int = 0
  var round: Int = 0
  var score: Int = 0
  
  init(red: Int, green: Int, blue: Int, round: Int, score: Int) {
    self.red = red
    self.green = green
    self.blue = blue
    self.round = round
    self.score = score

  }
  
  func roundCounter() {
    self.round += 1
  }
  
  func roundReset() {
    self.round = 0
  }
  
  func runningScore(score: Int) {
    self.score += score
  }
  
  func randomColorCode() -> Int {
   Int.random(in: 1...255)
  }
  
  func startNewRound() {
    roundCounter()
    self.red = self.randomColorCode()
    self.blue = self.randomColorCode()
    self.green = self.randomColorCode()
  }
  
  func startNewGame() {
    roundReset()
//    targetValue = Int.random(in: 1...100)
//    currentValue = 50
//    slider.value = Float(currentValue)
    self.red = 0
    self.green = 0
    self.blue = 0
    self.round = 0
  }
  
}
