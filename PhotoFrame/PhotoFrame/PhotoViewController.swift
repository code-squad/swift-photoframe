//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/11.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrameView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
        photoLabel.text = "Photo Album"
        photoLabel.adjustsFontSizeToFitWidth = true
        photoImageView.contentMode = .scaleAspectFill
        
        setRandomImage()
    }

    @IBAction func randomButtonTouched(_ sender: Any) {
        setRandomImage()
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        openPhotoLibrary()
    }
    
    func generateImageNumber() -> String {
        let randomNumber = Int.random(in: 1...22)
        return randomNumber > 9 ? "\(randomNumber)" : "0\(randomNumber)"
    }
    
    func setRandomImage() {
        let imageNumber = generateImageNumber()
        self.photoImageView.image = UIImage(named: "Demo Images/\(imageNumber).jpg")
    }
}

extension PhotoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func openPhotoLibrary() {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
    
}
