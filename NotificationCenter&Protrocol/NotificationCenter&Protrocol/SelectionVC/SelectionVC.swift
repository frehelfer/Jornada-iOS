//
//  SelectionVC.swift
//  NotificationCenter&Protrocol
//
//  Created by Frédéric Helfer on 06/12/22.
//

import UIKit

class SelectionVC: UIViewController {

    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
