//
//  ViewController.swift
//  NavigationAvancado
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }


    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        // MARK: Metodo simples de navegação
//        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
//         MODAL
//        vc?.modalPresentationStyle = .fullScreen
//        self.present(vc ?? UIViewController(), animated: true)
//
//         NavigationController
//        vc?.name = self.nameTextField.text
//        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        // MARK: Transitando dados entre telas
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") { coder in
            return Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
        }

            self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
}

