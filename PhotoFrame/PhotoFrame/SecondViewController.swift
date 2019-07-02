//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by hw on 24/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    ///UIImagePickerController
    let picker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        print("secondSceneVC viewDidLoad\n", #file, #line, #function, #column)
        self.photoImageView.image = UIImage(named: "07.jpg")
        super.viewDidLoad()
        picker.delegate = self // picker의 역할을 SecondView에 위임
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alertControl = UIAlertController(title: "앨범에 대한 접근권한 요청", message: "앱에서 다음의 기능 수행을 위해 접근권한을 요청합니다.", preferredStyle: .actionSheet)
        let photoLibrary =  UIAlertAction(title: "사진앨범에서 찾기", style: .default) { (action) in self.openLibrary()
        }
        let camera =  UIAlertAction(title: "카메라로 찍기", style: .default) { (action) in
            self.openCamera()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alertControl.addAction(photoLibrary)
        alertControl.addAction(camera)
        alertControl.addAction(cancel)
        present(alertControl, animated: true, completion: nil)
    }
    
    private func openLibrary (){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    private func openCamera(){
        picker.sourceType = .camera
        present(picker, animated: false, completion: nil)

    }
    @IBAction func displayNextImage(_ sender: Any) {
        let imageId = generateImageId()
        self.photoImageView.image = UIImage(named: "\(imageId).jpg")
    }
    
    private func generateImageId() -> String {
        let randomNumber = Int.random(in: 1..<23)
        let result = String.init(format: "%.2d", randomNumber)
        return result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("secondSceneVC viewWillAppear\n", #file, #line, #function, #column)
        super.viewWillAppear(true)
    }
    override func viewDidAppear(_ animated: Bool) {
        print("secondSceneVC viewDidAppear\n", #file, #line, #function, #column)
        super.viewDidAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("secondSceneVC viewWillDisappear\n", #file, #line, #function, #column)
        super.viewWillDisappear(true)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("secondSceneVC viewDidDisappear\n", #file, #line, #function, #column)
        super.viewDidDisappear(true)
    }
}
/// UIImagePickerController delegate를 위한 viewController 확장
/// UIImagePickerControllerDelegate의 delegate 속성은 UIImagePickerControllerDelegate와 UINavigationControllerDelegate 프로토콜을 모두 구현하는 객체로 정의되어있음
/// by guideline, Delegate를 위한 protocol 채택은 extension으로 작성한다.
/// https://forums.bignerdranch.com/t/why-uinavigationcontrollerdelegate/8498
extension SecondViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    /// method를 extension으로 구현하는 경우에는 수동으로 dismiss 로직을 포함시켜줘야한다.
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            self.photoImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}

