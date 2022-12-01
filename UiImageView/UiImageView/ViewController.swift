//
//  ViewController.swift
//  UiImageView
//
//  Created by Frédéric Helfer on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "Protools")
        imageView.contentMode = .scaleAspectFit
    }


}

