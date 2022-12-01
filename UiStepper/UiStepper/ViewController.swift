//
//  ViewController.swift
//  UiStepper
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        stepper.stepValue = 10
        
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        valueLabel.text = String(Int(sender.value))
    }
}

