//
//  ViewController.swift
//  testeViewCode
//
//  Created by Frédéric Helfer on 05/12/22.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    }


}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        print("Chegou na VC")
        let vc = HomeVC()
        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
    }
}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let email = loginScreen?.emailTextField.text ?? ""
        let password = loginScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.loginButton.backgroundColor = .darkGray
        } else {
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
}
