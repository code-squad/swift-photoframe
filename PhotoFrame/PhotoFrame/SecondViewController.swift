//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 2018. 1. 29..
//  Copyright © 2018년 yuaming. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        setImages(UIImage(named: "1.jpg"))
    }
    
    private func setImages(_ image: UIImage?) {
        if let image = image {
            photoImage.image = image
            photoImage.contentMode = .scaleAspectFit
        }
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else {
            print("포토 라이브러리를 열 수 없습니다.")
            return
        }
    
        openPhotoLibrary()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }

        setImages(image)
        closePhotoLibrary(picker)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        closePhotoLibrary(picker)
    }
    
    private func openPhotoLibrary() {
        let imagePicker: UIImagePickerController = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
        self.present(imagePicker, animated: true)
    }
    
    private func closePhotoLibrary(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
