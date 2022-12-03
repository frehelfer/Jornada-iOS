//
//  AlertController.swift
//  DesafioTabBar
//
//  Created by Frédéric Helfer on 03/12/22.
//

import UIKit

enum TypeImageSelected {
    case camera, library, cancel
}

class AlertController: NSObject {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func chooseImage(completion: @escaping (_ option: TypeImageSelected) -> Void) {
        let alertController = UIAlertController(title: "Selecione uma das opções abaixo", message: nil, preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Câmera", style: .default) { action in
            completion(.camera)
        }
        
        let library = UIAlertAction(title: "Biblioteca", style: .default) { action in
            completion(.library)
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel)
        
        alertController.addAction(camera)
        alertController.addAction(library)
        alertController.addAction(cancel)
        controller.present(alertController, animated: true)
    }
    
    func alertInformation(title: String, message: String) {
        let alertControoler = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default)
        alertControoler.addAction(ok)
        controller.present(alertControoler, animated: true)
    }
}
