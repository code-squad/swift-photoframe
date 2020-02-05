//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 신한섭 on 2020/02/04.
//  Copyright © 2020 신한섭. All rights reserved.
//

import UIKit

extension SecondViewController : UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
    func imagePickerController(_ picker:UIImagePickerController, didFinishPickingMediaWithInfo info : [String:Any]){}
}

class SecondViewController: UIViewController{
    let picker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let fileNumber = String(format: "%02d", Int.random(in: 1...22))
        self.photoImageView.image=UIImage(named:"\(fileNumber).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert =  UIAlertController(title: "사진 선택", message: "선택하세요", preferredStyle: .actionSheet)
        let library =  UIAlertAction(title: "사진앨범", style: .default){ (action) in self.openPhotoLibrary()}
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(library)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.layer.zPosition=1
        picker.delegate=self
        
    }
    
    func openPhotoLibrary(){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}
