//
//  CarCell.swift
//  DesafioTableView
//
//  Created by Frédéric Helfer on 01/12/22.
//

import UIKit

class CarCell: UITableViewCell {

    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier = "CarCell"
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(_ data: Car) {
        carLabel.text = data.carName
        carImageView.image = UIImage(named: data.carName) ?? UIImage(systemName: "car")
    }
}
