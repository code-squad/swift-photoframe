//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jinseo park on 3/10/21.
//

import UIKit

class SecondViewController: UIViewController{

    @IBOutlet weak var photoImgView: UIImageView!
    
    /*사진을 불러오기 위한 컨트롤러*/
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoImgView.image = UIImage(named: "01.jpg")
        self.photoImgView.contentMode = .scaleToFill
        
        
        imagePicker.delegate = self
                
    }
    
    @IBAction func changeImgBtnTouched(_ sender: Any) {
        
        let randInt = Int.random(in: 1...22)
        
        /*String.format을 이용해서 경로를 적음*/
        self.photoImgView.image = UIImage(named: String(format: "%02d", randInt))

        /* contentMode의 scaleToFill을 이용해서 사이즈를 조정한다.*/
        self.photoImgView.contentMode = .scaleToFill

    }
    
    @IBAction func selectBtnTouched(_ sender: Any) {
        /*photoLibrary 를 통해 image를 픽할수 있고, present를 이용해 뷰 전환*/
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
}

/*이 작업을 하는 이유는 앨범에 들어가서 이미지를 선택 후, 다시 SecondView로 오기위한 작업
 이미지를 바꿔주고, 앨범 view를 dismiss 해주어야 한다.*/
extension SecondViewController : UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImgView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
}
