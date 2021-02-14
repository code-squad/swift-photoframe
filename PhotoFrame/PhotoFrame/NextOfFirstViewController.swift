//
//  NextOfFirstViewController.swift
//  PhotoFrame
//
//  Created by 오킹 on 2021/02/10.
//

import UIKit

class NextOfFirstViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrame: UIImageView!
    let imagePicker = UIImagePickerController()
   
    @objc func pickImage() {
        self.present(self.imagePicker, animated: true)
    }
    
    override func viewDidLoad() {
        //액자 프레임 가장 뒤로 보냄
        self.view.insertSubview(photoFrame, at: 0)
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.imagePicker.sourceType = .photoLibrary // 앨범에서 가져옴
        self.imagePicker.allowsEditing = true // 수정 가능 여부
        self.imagePicker.delegate = self // picker delegate, 이거 안하니까 imagePickerController() 실행안됨
    }
  
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        pickImage()
    }
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    //will: 직전
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    //Did: 직후
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNum = String(format: "%02d", Int.random(in: 1...22))
        photoImageView.image = UIImage(named: "\(randomNum).jpg")
    }
}

extension NextOfFirstViewController  {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var newImage: UIImage? = nil // update 할 이미지
        
        if let possibleImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            newImage = possibleImage // 수정된 이미지가 있을 경우
        } else if let possibleImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage = possibleImage // 원본 이미지가 있을 경우
        }
        
        self.photoImageView.image = newImage // 받아온 이미지를 update
        picker.dismiss(animated: true, completion: nil) // picker를 닫아줌
    }
}
