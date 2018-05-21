//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김수현 on 2018. 5. 11..
//  Copyright © 2018년 김수현. All rights reserved.
//

import UIKit
import MobileCoreServices

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var photoImageView: UIImageView!
    let imagePicker = UIImagePickerController()
    var captureImage: UIImage!
    var imageSave = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber: UInt32 = arc4random_uniform(22)+1
        let imageName = String(format: "%02d.jpg", randomNumber)
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController()
        let library =  UIAlertAction(title: "사진앨범", style: .default) { (action) in self.openLibrary() }
        let camera =  UIAlertAction(title: "카메라", style: .default) { (action) in self.openCamera() }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)

        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    func openLibrary(){
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: false, completion: nil)
    }
    
    func openCamera(){
        imagePicker.sourceType = .camera
        present(imagePicker, animated: false, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            photoImageView.image = image
            print(info)
        }
        dismiss(animated: true, completion: nil)
    }
}

