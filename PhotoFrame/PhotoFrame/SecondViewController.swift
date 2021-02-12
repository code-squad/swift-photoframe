//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 서우석 on 2021/02/09.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let picker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var frameImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.frameImageView.image = UIImage(named: "frame.png")
        self.photoImageView.bringSubviewToFront(self.frameImageView)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let ranNum = arc4random_uniform(22) + 1
        self.photoImageView.image = UIImage(named: String(format: "%02d.jpg", ranNum))
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = image
            dismiss(animated: true, completion: nil)
        }
    }
}

