//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by Issac on 2021/02/09.
//

import UIKit

class SecondSceneViewController: UIViewController {
    private let picker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchPhotoImageview))
        photoImageView.addGestureRecognizer(tapGesture)
        photoImageView.isUserInteractionEnabled = true
    }
    
    @objc func touchPhotoImageview() {
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomNum = String(format: "%02d", Int.random(in: 1...22))
        self.photoImageView.image = UIImage(named: "\(randomNum).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        touchPhotoImageview()
    }
}

extension SecondSceneViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage {
            photoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
}
