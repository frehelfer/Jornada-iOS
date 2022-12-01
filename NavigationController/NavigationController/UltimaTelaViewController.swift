//
//  UltimaTelaViewController.swift
//  NavigationController
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedGoHomeView(_ sender: UIBarButtonItem) {
//        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
