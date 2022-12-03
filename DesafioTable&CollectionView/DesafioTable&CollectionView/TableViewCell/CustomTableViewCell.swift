//
//  CustomTableViewCell.swift
//  DesafioTable&CollectionView
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var carCollectionView: UICollectionView!
    
    var data: [String] = []
    
    static let identifier: String = "CustomTableViewCell"
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        carLabel.text = "Carros Esportivos"
        carLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        configCarCollectionView()
        
    }
    
    func configCarCollectionView() {
        carCollectionView.delegate = self
        carCollectionView.dataSource = self
        carCollectionView.register(CarCollectionView.nib(), forCellWithReuseIdentifier: CarCollectionView.identifier)
        if let layout = carCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
    }
    

    func receiveData(cars: [String]) {
        data = cars
    }
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionView.identifier, for: indexPath) as? CarCollectionView
        cell?.configCell(imageName: data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 331)
    }
    
}
