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
        

        setupSliders()
        updateColor()
        
        colorDisplay.layer.cornerRadius = 15
    }
    
    
    private func setupSlider(_ slider: UISlider, color: UIColor) {
        slider.value = 0.5
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = color
    }
    
    private func setupSliders() {
        setupSlider(redColor, color: .red)
        setupSlider(greenColor, color: .green)
        setupSlider(blueColor, color: .blue)
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

