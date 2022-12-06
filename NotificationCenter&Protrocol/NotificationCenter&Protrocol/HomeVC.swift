//
//  ViewController.swift
//  NotificationCenter&Protrocol
//
//  Created by Frédéric Helfer on 06/12/22.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
    }

}

extension HomeVC: HomeScreenProtocol {
    func tapperChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

 
