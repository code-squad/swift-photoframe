//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 한천희 on 2020/02/04.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoFrame: UIImageView!
    
    let imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePickerController.delegate = self
    }

    func generateRandomUIImage() -> UIImage! {
        
        let randomNumber = Int.random(in: 1..<22)
        
        if randomNumber < 10 {
            return UIImage(named: "0\(randomNumber).jpg")
        }
        
        return UIImage(named: "\(randomNumber).jpg")
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {

        self.photoImageView.image = generateRandomUIImage()
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        
        self.imagePickerController.sourceType = .photoLibrary
        self.present(imagePickerController, animated: true, completion: nil)
        
    }
}

extension SecondViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
        if let image = info[UIImagePickerController.InfoKey.originalImage]{
                photoImageView.image = image as? UIImage
        }
        dismiss(animated: true, completion: nil)
    }
}
