//
//  ViewController.swift
//  DesafioTabBar
//
//  Created by Frédéric Helfer on 02/12/22.
//

import UIKit

class Tela01: UIViewController {

    @IBOutlet weak var selectedImageView: UIImageView!
    
    @IBOutlet weak var photoNameLabel: UILabel!
    @IBOutlet weak var photoNameTextField: UITextField!
    
    @IBOutlet weak var selectPhotoButton: UIButton!
    @IBOutlet weak var addPhotoButton: UIButton!
    
    @IBOutlet weak var photosTableView: UITableView!
    
    var photos: [PhotoModel] = []
    var photo: UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        tableViewConfig()
    }
    
    @IBAction func tappedSelectPhotoButton(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    
    @IBAction func tappedAddPhotoButton(_ sender: UIButton) {
        guard
            let image = photo,
            photoNameTextField.text != "",
            let imageName = photoNameTextField.text else {
        return }
        
        photos.append(PhotoModel(image: image, name: imageName))
        
        photo = nil
        selectedImageView.image = UIImage(systemName: "person.circle")
        photoNameTextField.text = ""
        
        photosTableView.reloadData()
    }
    
    
    func configView() {
        view.backgroundColor = .lightGray
        
        selectedImageView.image = UIImage(systemName: "person.circle")
        selectedImageView.tintColor = .black
        photoNameLabel.text = "Nome"
        photoNameTextField.placeholder = "Digite um nome para a foto."
        selectPhotoButton.titleLabel?.text = "Editar Foto"
        addPhotoButton.titleLabel?.text = "Adicionar"
    }

    func tableViewConfig() {
        photosTableView.delegate = self
        photosTableView.dataSource = self
        photosTableView.register(PhotoCell.nib(), forCellReuseIdentifier: PhotoCell.identifier)
    }

}

extension Tela01: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PhotoCell.identifier, for: indexPath) as? PhotoCell else {
            fatalError("Unable to dequeue PhotoCell.")
        }
        cell.setPhotoCell(data: photos[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        144
    }
}

extension Tela01: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        selectedImageView.image = image
        photo = image
        dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

