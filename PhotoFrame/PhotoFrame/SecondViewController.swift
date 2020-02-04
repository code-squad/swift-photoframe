//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by TTOzzi on 2020/02/03.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate  {

    @IBOutlet weak var photoImageView: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        self.photoImageView.contentMode = .scaleToFill
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: String(format: "%02d", Int.random(in: 1...22)))
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        photoImageView.image = image
        dismiss(animated: true, completion: nil)
    }
    
}
