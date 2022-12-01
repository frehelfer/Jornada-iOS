//
//  ViewController.swift
//  UiSlider
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 0
        slider.value = 0
        slider.maximumValue = 20
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .green
        slider.thumbTintColor = .systemTeal
        
        
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))
    }
}

