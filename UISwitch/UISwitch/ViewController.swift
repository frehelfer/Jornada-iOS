//
//  ViewController.swift
//  UISwitch
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateSwitch.isOn = false
        stateSwitch.onTintColor = .blue
        
    }

    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
}

