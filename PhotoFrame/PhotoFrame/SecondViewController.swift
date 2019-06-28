//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jang gukjin on 25/06/2019.
//  Copyright © 2019 jang gukjin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let picker = UIImagePickerController()

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let fileNumber = Int.random(in: 1...22)
        let fileName = String(format: "%02d", fileNumber)+".jpg"
        self.photoImageView.image = UIImage(named: fileName)
    }
    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController(title: "사진선택", message: "두가지 방법으로 선택해요", preferredStyle: .actionSheet)
        
        let library = UIAlertAction(title: "사진앨범", style: .default) {
            (action) in self.openLibrary()
        }
        
        let camera = UIAlertAction(title: "카메라", style: .default) {
            (action) in self.openCamera()
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    func openCamera() {
        picker.sourceType = .camera
        present(picker, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = image
            print(info)
        }
        dismiss(animated: true, completion: nil)
    }
}
