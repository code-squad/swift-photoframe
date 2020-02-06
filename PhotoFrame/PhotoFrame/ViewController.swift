//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Cloud on 2020/02/03.
//  Copyright © 2020 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.isOpaque = true
            pickerController.delegate = self
        }
    }
    @IBOutlet var photoDescription: UILabel! {
        didSet {
            photoDescription.text = "굿드"
            photoDescription.textAlignment = .left
        }
    }
    let pickerController = UIImagePickerController()
    
    // MARK: - Actions
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let photo = info[.originalImage] as? UIImage else { return }
        DispatchQueue.main.async {
            self.imageView.image = photo
        }
        dismiss(animated: true, completion: nil)
    }
}
