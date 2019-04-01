//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김지나 on 11/03/2019.
//  Copyright © 2019 김지나. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let picker = UIImagePickerController()

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.photoImageView.image = UIImage(named: "01.jpg")
        picker.delegate = self
    }
    
    // 다음 버튼을 누르면 22개의 이미지를 랜덤하게 보여줌
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomImageNumber = Int.random(in: 1 ... 22)
        let form = String(format: "%02d.jpg", randomImageNumber)
        self.photoImageView.image = UIImage(named: form)
        
    }
    
    // 선택 버튼을 누르면 사진앨범 피커로 이동하여 사진을 선택할 수 있도록 해줌
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
}

// 사진앨범의 이미지를 피커를 이용해서 보여주도록 확장
// 애플에서 delegate채택 작업은 extension으로 분리 권장됨
extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage{
            photoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
}
