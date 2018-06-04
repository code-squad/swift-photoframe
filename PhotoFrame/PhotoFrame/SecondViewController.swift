//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit
import Photos

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    private let numberOfImages: UInt32 = 22
    private var currentImageNumber: UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: IBAction methods
    @IBAction func selectButtonTouched(_ sender: Any) {
        let imagePicker: UIImagePickerController = UIImagePickerController()
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let imageName: String = String(format: "Demo Images/%02d.jpg", self.generateRandomNumber())
        guard let photoImage = UIImage(named: imageName) else {
            return
        }
        self.photoImageView.contentMode = .scaleAspectFit
        self.photoImageView.clipsToBounds = true
        self.photoImageView.image = photoImage
    }
    
    private func generateRandomNumber() -> UInt32 {
        // 이미 현재 이미지의 고르지 않도록 중복방지
        var randomNumber = arc4random_uniform(self.numberOfImages) + 1
        while randomNumber == self.currentImageNumber {
            randomNumber = arc4random_uniform(self.numberOfImages) + 1
        }
        self.currentImageNumber = randomNumber
        return randomNumber
    }
    
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let editedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.photoImageView.image = editedImage
        }
        picker.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
