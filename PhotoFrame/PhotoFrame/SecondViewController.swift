//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Chaewan Park on 2020/02/03.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    private lazy var imagePicker = UIImagePickerController.photoAlbumImagePicker
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)

        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            imagePicker.delegate = self
        }
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImageName = String(format: "%02d", Int.random(in: 1...22))
        self.photoImageView.image = UIImage(named: randomImageName)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            photoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

private extension UIImagePickerController {
    static var photoAlbumImagePicker: UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        return picker
    }
}
