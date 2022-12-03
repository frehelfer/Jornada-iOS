//
//  PhotoModel.swift
//  DesafioTabBar
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

struct PhotoModel: Identifiable {
    let id = UUID()
    let image: UIImage
    let name: String
}
