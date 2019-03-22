//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Elena on 11/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "00.jpg")
        picker.delegate = self
    }
    
    // Photo Choice Button
    @IBAction func selectButtonTouched(_ sender: Any) {
        openLibrary()
    }
    
    // Random Print Button
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImage = chooseRandomNumber()
        self.photoImageView.image = UIImage(named: randomImage)
    }
    
    // 사진 앨범 열기 함수
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    // 랜덤으로 사진파일의 이름을 만들어 내는 함수
    func chooseRandomNumber() -> String {
        let firstImageNumber = 1, lastImageNumber = 22
        let randomNumber = Int.random(in: firstImageNumber...lastImageNumber)
        let imageName = String(format: "%02d.jpg", randomNumber)
        return imageName
    }

}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        photoImageView.image = image
        print(info)
        dismiss(animated: true, completion: nil)
    }
}
