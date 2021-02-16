//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by 이다훈 on 2021/02/10.
//

import UIKit

class SecondSceneViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrame: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "\(randomNumberAsString()).jpg")
        
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        openAlbum()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    func randomNumberAsString() -> String {
        let num = Int.random(in: 1...22)
        var sol = String()
        if num < 10 {
            sol = "0\(num)"
        }
        else {
            sol = String(num)
        }
        return sol
    }
    func openAlbum() {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: false, completion: nil)
    }
}

extension SecondSceneViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            print("이미지 픽킹 완료")
            
            if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage {
                photoImageView.image = image
            }
            
            dismiss(animated: true, completion: nil)
    }
    
}
