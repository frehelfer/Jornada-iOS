//
//  CarCollectionView.swift
//  DesafioTable&CollectionView
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class CarCollectionView: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CarCollectionView"
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        carImageView.contentMode = .scaleAspectFill
        
    }

    func configCell(imageName: String) {
        carImageView.image = UIImage(named: imageName)
    }
}
