//
//  ViewController.swift
//  DesafioTable&CollectionView
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carTableView: UITableView!
    
    let data: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carTableView.separatorStyle = .none
        
        configCarTableView()
    }

    func configCarTableView() {
        carTableView.delegate = self
        carTableView.dataSource = self
        carTableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.receiveData(cars: data)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
}

