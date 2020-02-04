//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/03.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePickerController = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupImagePickerController()
    }
    
    private func setupImagePickerController() {
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.modalPresentationStyle = .fullScreen
    }
    
    private func setupUI() {
        photoImageView.contentMode = .scaleAspectFill
    }

    var lastPhotoNumber = -1
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let NUMBER_OF_PHOTOS = 22
        var filename = ""
        var randomInt = Int.random(in: 1...NUMBER_OF_PHOTOS)
        
        while lastPhotoNumber == randomInt {
            randomInt = Int.random(in: 1...NUMBER_OF_PHOTOS)
        }
        
        filename = randomInt < 10 ? "0\(randomInt)" : "\(randomInt)"
        photoImageView.image = UIImage(named: filename)
        lastPhotoNumber = randomInt
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var pickedImage: UIImage!
        
        if let image = info[.editedImage] as? UIImage {
            pickedImage = image
        } else if let image = info[.originalImage] as? UIImage {
            pickedImage = image
        }
        
        photoImageView.image = pickedImage
        dismiss(animated: true, completion: nil)
    }
}
