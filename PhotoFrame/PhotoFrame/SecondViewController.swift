//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Mrlee on 2017. 12. 21..
//  Copyright © 2017년 Napster. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectButtonTouched(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imgPicker = UIImagePickerController()
            imgPicker.delegate = self
            imgPicker.sourceType = .photoLibrary
            self.present(imgPicker, animated: true, completion: nil)
        }
    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber = makeRandom()
        self.photoImageView.image = UIImage(named: String(format: "%02d.jpg", randomNumber))
    }
    private func makeRandom() -> Int {
        let MAX: UInt32 = 22
        let MIN: UInt32 = 1
        return Int(arc4random_uniform(MAX) + MIN)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        if let pickedImg = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.photoImageView.contentMode = .scaleAspectFit
            self.photoImageView.image = pickedImg
        }
        dismiss(animated: true, completion: nil)
    }
}
