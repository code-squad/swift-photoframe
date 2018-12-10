//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 윤지영 on 28/11/2018.
//  Copyright © 2018 윤지영. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrameImageView: UIImageView!
    @IBOutlet weak var photoLabel: TitleLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoFrameImageView.layer.zPosition = -1
        self.photoLabel.text = "랜덤 사진 앨범"
        print(#file, #line, #function, #column)
    }

    private func makeRandomImage() -> String {
        let firstImageNumber = 1, lastImageNumber = 22
        let randomNumber = Int.random(in: firstImageNumber...lastImageNumber)
        let nameOfImage = String(format: "%02d.jpg", randomNumber)
        return nameOfImage
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImage = makeRandomImage()
        self.photoImageView.image = UIImage(named: randomImage)
    }

    @IBAction func selectButtonTouched(_ sender: Any) {
        let sourceType = UIImagePickerController.SourceType.savedPhotosAlbum
        guard UIImagePickerController.isSourceTypeAvailable(sourceType) else { return }
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = sourceType
        self.present(imagePickerController, animated: true, completion: nil)
    }

}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imageSelected = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = imageSelected
        }
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}
