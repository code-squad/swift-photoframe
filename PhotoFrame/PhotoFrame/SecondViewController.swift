//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Viet on 2020/02/03.
//  Copyright © 2020 Viet. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func selectButtonTouched(_ sender: Any) {
        self.present(picker, animated: true)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.viewImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = false
        self.viewImage()
    }

    fileprivate func viewImage() {
        let number = Int.random(in: 1...22)
        let fileName = String(format: "%02d", number) + ".jpg"
        self.photoImageView.image = UIImage(named: fileName)
    }
    
    let picker = UIImagePickerController()
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(#file, #line, #function, #column)
        var newImage: UIImage? = nil
        
        if let possibleImage = info[.editedImage] as? UIImage {
            newImage = possibleImage
        } else if let possibleImage = info[.originalImage] as? UIImage {
            newImage = possibleImage
        }
        
        self.photoImageView.image = newImage
        
        picker.dismiss(animated: true)
    }
}
