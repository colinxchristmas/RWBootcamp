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

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var targetTextLabel: UILabel!
  @IBOutlet weak var guessLabel: UILabel!
  
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var blueLabel: UILabel!
  
  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!
  
  @IBOutlet weak var roundLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  
  var targetValue = 0
  
  var game = BullsEyeGame(red: 122, green: 12, blue: 222, round: 22)
  
  var rgb = RGB()
  
  @IBAction func aSliderMoved(sender: UISlider) {

  }
  
  @IBAction func showAlert(sender: AnyObject) {
    print("This is the \(game.red) : \(game.green) : \(game.blue) : round \(game.round)")
    game.startNewRound()
    print("This is the new game \(game.red) : \(game.green) : \(game.blue) : round \(game.round)")
    
  }
  
  @IBAction func startOver(sender: AnyObject) {

  }
  
  func updateView() {

  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func startNewRound() {
//    round += 1
    targetValue = Int.random(in: 1...100)
//    currentValue = 50
//    slider.value = Float(currentValue)
//    updateLabels()
  }
}

