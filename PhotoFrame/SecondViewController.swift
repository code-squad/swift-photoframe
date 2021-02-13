//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 박혜원 on 2021/02/08.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    let imagePicker : UIImagePickerController! = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let number = Int.random(in: 1...22)
        let numberStr = String(format: "%02d", number)
        self.photoImageView.image = UIImage(named: "/Users/parkhyewon/git/swift-photoframe/PhotoFrame/DemoImages/\(numberStr).jpg")
    }
    
    @IBAction func roadImageButtonTouched(_ sender: Any) {
        if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)){
            imagePicker.delegate = self
            
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            
            self.present(imagePicker, animated: false)
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

extension SecondViewController : UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imagePicker.dismiss(animated: false, completion: {() in
            let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.photoImageView.image = image
        })
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: false, completion: { () in
            
            let alert = UIAlertController(title: "",
                                          message: "이미지 선택이 취소되었습니다",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .cancel))
            self.present(alert, animated: false)
        })
    }
    
}
