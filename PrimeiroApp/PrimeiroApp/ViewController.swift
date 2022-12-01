//
//  ViewController.swift
//  PrimeiroApp
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bemVindoLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bemVindoLabel.text = "Teste"
        
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        if view.backgroundColor == .green {
            view.backgroundColor = .systemTeal
        } else {        
            view.backgroundColor = .green
        }
    
        
    }
}

