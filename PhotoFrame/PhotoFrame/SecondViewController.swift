//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jack on 2018. 1. 26..
//  Copyright © 2018년 jack. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomPhotoNumber = arc4random_uniform(22) + 1
        self.photoImageView.image = UIImage(named: String.init(format: "%02d.jpg", randomPhotoNumber))
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            let imagePickerView = UIImageView.init(image: image)
            imagePickerView.contentMode = .scaleAspectFit
            self.photoImageView.image = imagePickerView.image
            dismiss(animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

