//
//  ViewController.swift
//  DesafioTableView
//
//  Created by Frédéric Helfer on 01/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carTableView: UITableView!
    
    let carName: [Car] = [
        Car(carName: "Honda", image: "honda"),
        Car(carName: "Toyota", image: "toyota"),
        Car(carName: "Fiat", image: "fiat"),
        Car(carName: "BMW", image: "bMW"),
        Car(carName: "Tesla", image: "tesla")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carTableView.delegate = self
        carTableView.dataSource = self
        carTableView.register(CarCell.nib(), forCellReuseIdentifier: CarCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        carName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarCell.identifier, for: indexPath) as? CarCell
        cell?.setupCell(carName[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(carName[indexPath.row].carName)
    }
}

