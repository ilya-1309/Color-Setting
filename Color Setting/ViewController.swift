//
//  ViewController.swift
//  Color Setting
//
//  Created by Ilya Feklin on 03.02.2025.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorDisplay: UIView!
    
    @IBOutlet var redColor: UISlider!
    @IBOutlet var greenColor: UISlider!
    @IBOutlet var blueColor: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedColor()
        setupGreenColor()
        setupBlueColor()
        updateColor()
        
        colorDisplay.layer.cornerRadius = 10
    }
    

    private func setupRedColor() {
        redColor.value = 0.5
        redColor.minimumValue = 0
        redColor.maximumValue = 1
        redColor.minimumTrackTintColor = .red
        
    }
    
    private func setupGreenColor() {
        greenColor.value = 0.5
        greenColor.minimumValue = 0
        greenColor.maximumValue = 1
        greenColor.minimumTrackTintColor = .green
    }
    
    private func setupBlueColor() {
        blueColor.value = 0.5
        blueColor.minimumValue = 0
        blueColor.maximumValue = 1
        blueColor.minimumTrackTintColor = .blue
    }
    
    @IBAction func changeDisplayColor() {
        updateColor()
    }
    
    private func updateColor() {
        let red = CGFloat(redColor.value)
        let green = CGFloat(greenColor.value)
        let blue = CGFloat(blueColor.value)
        
        colorDisplay.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
        redLabel.text = String(format: "%.2f", red)
        greenLabel.text = String(format: "%.2f", green)
        blueLabel.text = String(format: "%.2f", blue)
    }
    
}

