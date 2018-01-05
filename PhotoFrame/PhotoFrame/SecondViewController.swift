//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2017. 12. 27..
//  Copyright © 2017년 심 승민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    private var imageFileNames: [String]
    private var imagePicker: UIImagePickerController
    private var preventButtonTouch: Bool

    required init?(coder aDecoder: NSCoder) {
        self.imageFileNames = []
        self.imagePicker = UIImagePickerController()
        self.preventButtonTouch = false
        super.init(coder: aDecoder)
        self.imageFileNames = setJPGImageFileNames()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog(#file, #line, #function, #column)
        showRandomImage()
        self.photoImageView.contentMode = .scaleAspectFit
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        showRandomImage()
    }

    private func showRandomImage() {
        let randomIndex = getRandomIndex(self.imageFileNames.count)
        let randomImage = generateUIImage(randomIndex)
        self.photoImageView.image = randomImage
    }

    private func generateUIImage(_ fileIndex: Int) -> UIImage? {
        return UIImage(named: self.imageFileNames[fileIndex])
    }

    private func getRandomIndex(_ maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }

    private func setJPGImageFileNames() -> [String] {
        guard let path = Bundle.main.resourcePath else { return [] }
        let fileManager = FileManager.default
        var jpgImageFiles: [String] = []
        if let fileNames = try? fileManager.contentsOfDirectory(atPath: path) {
            // 폴더명은 따로 붙여줄 필요 없음.
            jpgImageFiles = fileNames.filter({ $0.hasSuffix(".jpg") })
        }
        return jpgImageFiles
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        guard self.preventButtonTouch == false else { return }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            self.preventButtonTouch = true
            // 이걸 적지 않으면 이미지피커는 띄울 수 있으나, 유저가 선택한 이미지를 받아올 수 없다.
            // 이미지 피커와 유저가 선택한 이미지를 뷰컨트롤러에 띄우는 로직이 구현된 현재 뷰컨트롤러가 연결되지 않았기 때문.
            self.imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true, completion: nil)
        }
    }

    // UIImagePickerControllerDelegate 클래스에 정의된 메소드로, 유저가 이미지나 영상 선택 시 delegate에게 전달한다.
    // delegate로 설정된 현재 뷰컨트롤러에서 이 데이터를 가지고 특정 로직을 수행한다. 뷰--델리게이트-->뷰컨트롤러
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.photoImageView.image = selectedImage
        }
        self.preventButtonTouch = false
        picker.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.presentingViewController?.dismiss(animated: true, completion: nil)
        self.preventButtonTouch = false
    }
}
