//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 윤동민 on 17/12/2018.
//  Copyright © 2018 윤동민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrame: UIImageView!
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.delegate = self
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.photoFrame.image = UIImage(named: "photoframe-border.png")
    }

    @IBAction func nextImageTouched(_ sender: Any) {
        let imageName: String = String(format: "%02d", Int(arc4random_uniform(22))+1) + ".jpg"
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController(title: "가져올 곳", message: "선택하시오", preferredStyle: .actionSheet)
        
        let albumPickAction = UIAlertAction(title: "사진앨범", style: .default) { (action) in self.openLibrary() }
        let cameraPickAction = UIAlertAction(title: "카메라", style: .default) { (action) in self.openCamera() }
        let cancelPickAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(cameraPickAction)
        alert.addAction(albumPickAction)
        alert.addAction(cancelPickAction)
    
        present(alert, animated: true, completion: nil)
    }
    
    private func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    private func openCamera() {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            picker.sourceType = .camera
            present(picker, animated: false, completion: nil)
        } else {
            print("Camera can't not use")
        }
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = pickImage
        }
        dismiss(animated: true, completion: nil)
    }
}
