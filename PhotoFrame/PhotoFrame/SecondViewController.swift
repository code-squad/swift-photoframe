//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Ador on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.allowsEditing = true
    }
    

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let number = arc4random_uniform(22) + 1
        let string = String(format: "%02d", number)
        self.photoImageView.image = UIImage(named: "\(string).jpg")
    }

    @IBAction func selectButtonTouched(_ sender: Any) {
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage else {
            return
        }
        photoImageView.image = selectedImage
        picker.dismiss(animated: true, completion: nil)
    }
}
