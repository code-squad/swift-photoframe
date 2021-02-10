//
//  PhotoAlbumViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class PhotoAlbumViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoAlbumLabel: UILabel!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        Animation.imageCrossDissolveAnimate(imageView: photoImageView,
                                            selectImage: randomImageSelect())
        Animation.labelAlphaIncrease(target: photoAlbumLabel, withDuration: 0.5)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        self.present(imagePicker, animated: true, completion: nil)
    }
}

extension PhotoAlbumViewController {
    
    func randomImageSelect() -> String {
        let number = Int.random(in: 1...22)
        return String(format: "%02d.jpg", number)
    }
}

extension PhotoAlbumViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var selectImage : UIImage? = nil
        selectImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        photoImageView.image = selectImage
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
