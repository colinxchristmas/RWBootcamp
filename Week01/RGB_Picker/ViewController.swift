//
//  ViewController.swift
//  RGB_Picker
//
//  Created by Colin Christmas on 5/29/20.
//  Copyright © 2020 Colin Christmas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redCurrentValue: Int = 0
    var greenCurrentValue: Int = 0
    var blueCurrentValue: Int = 0
    
    var redOutputValue: Int = 0
    var greenOutputValue: Int = 0
    var blueOutputValue: Int = 0
    
    var inputField: UITextField!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var nameLabelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func redSliderMoved(_ slider: UISlider){
        let roundedValue = slider.value.rounded()
        redCurrentValue = Int(roundedValue)
        redLabelValue.text = String(redCurrentValue)
    }
    
    @IBAction func greenSliderMoved(_ slider: UISlider){
        let roundedValue = slider.value.rounded()
        greenCurrentValue = Int(roundedValue)
        greenLabelValue.text = String(greenCurrentValue)
    }
    
    @IBAction func blueSliderMoved(_ slider: UISlider){
        let roundedValue = slider.value.rounded()
        blueCurrentValue = Int(roundedValue)
        blueLabelValue.text = String(blueCurrentValue)
    }
    
    @IBAction func resetValues() {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        redLabelValue.text = String(0)
        greenLabelValue.text = String(0)
        blueLabelValue.text = String(0)
        nameLabelValue.text = "Color Name"
//      Sets background back to white
        view.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Save color name", message: "", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            self.inputField = textField
        }
        
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.changeBackground()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func changeBackground() {
        nameLabelValue.text = inputField.text
        let redValue = redSlider.value
        let greenValue = greenSlider.value
        let blueValue = blueSlider.value
        
        let colorChoice = UIColor(red: CGFloat(redValue/255.0), green: CGFloat(greenValue/255.0), blue: CGFloat(blueValue/255.0), alpha: 1.0)
        view.backgroundColor = colorChoice
    }

}
