//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by user on 2021/02/09.
//

import UIKit

class SecondViewController: UIViewController{
    let picker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randNum = String(format: "%02d" ,Int.random(in: 1...22))
        let imageName = "Demo Images/\(randNum).jpg"
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        picker.delegate = self
        openLibrary()
        
    }
}

extension SecondViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
            photoImageView.contentMode = .scaleAspectFill
        }
        dismiss(animated: true, completion: nil)
    }
}
