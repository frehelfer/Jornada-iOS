//
//  TabBarController.swift
//  DesafioTabBar
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configItems()
        configTabBar()
    }
    
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[1].title = "Tela 02"
        items[2].title = "Tela 03"
        
        items[0].image = UIImage(systemName: "person")
        items[1].image = UIImage(systemName: "phone.fill")
        items[2].image = UIImage(systemName: "trash.fill")
    }
    
    func configTabBar() {
        tabBar.layer.borderWidth = 0.3
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
