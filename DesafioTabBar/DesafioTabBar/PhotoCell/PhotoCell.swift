//
//  PhotoCell.swift
//  DesafioTabBar
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoLabel: UILabel!
    
    static let identifier: String = "PhotoCell"
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.layer.cornerRadius = 20
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPhotoCell(data: PhotoModel) {
        photoImageView.image = data.image
        photoLabel.text = data.name
    }
    
}
