//
//  ViewController.swift
//  NavigationAvancado
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        // MODAL
//        vc?.modalPresentationStyle = .fullScreen
//        self.present(vc ?? UIViewController(), animated: true)
        
        // NavigationController
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

