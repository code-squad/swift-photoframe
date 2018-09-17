//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by oingbong on 2018. 9. 11..
//  Copyright © 2018년 oingbong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        randomImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Second : " , #file , #line , #function , #column)
        randomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomImage(){
        self.photoImageView.image = UIImage(named: randomImageName())
    }

    func randomImageName() -> String {
        let random = Int(arc4random_uniform(22) + 1)
        return String(format: "DemoImages/%02d.jpg" , random)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.photoImageView.image = selectedImage
            picker.dismiss(animated: true, completion: nil)
        }
    }
}

