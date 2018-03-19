//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by YOUTH on 2018. 3. 9..
//  Copyright © 2018년 JINiOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func generateRandomImageNumber() -> String {
        let randomNumber = Int(arc4random_uniform(21))+1
        return String(format: "%02d", randomNumber)
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "\(self.generateRandomImageNumber()).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
    }

    // 이미지 피커에서 이미지 선택 안했을 때
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: false, completion: {() in
            let alert = UIAlertController(title: "", message: "이미지 선택 취소", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel))
            self.present(alert, animated: false)
        })

    }

    // 이미지 피커에서 이미지 선택 했을 때
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        self.dismiss(animated: false) {() in
            let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
            self.photoImageView.image = selectedImage
        } // completion 파라미터 부분 트레일링 클로저 사용
    }
}


