//
//  CustomCollectionViewCell.swift
//  CollectionView
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }

    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
