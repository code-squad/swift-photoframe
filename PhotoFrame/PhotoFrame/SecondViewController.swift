//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 임승혁 on 2020/02/03.
//  Copyright © 2020 임승혁. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    let uiPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //picker에 대한 delegate 설정
        self.uiPicker.delegate = self
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.image = UIImage(named: "\(randImg()).jpg")
    }
    
    @IBAction func selectButtonTouched(sender: UIButton){
         //picker가 어떤 컨텐츠를 선택하는지 설정(사진앨범)
         self.uiPicker.sourceType = .photoLibrary
         //새로운 viewController로 전달, 모달로 화면 전환
         self.present(self.uiPicker, animated: true)
    }
    
    func randImg() -> String {
        let imgNum = arc4random_uniform(22)+1
        let img = String(format: "%02d", imgNum)
        
        return img
    }
}

//해당 클래스는 2개의 protocol를 따른다.
extension SecondViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //UIImagePickerControllerDelegate의 함수를 가져옴
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        //조건부 다운캐스팅, 타입을 확인하는 용도, 캐스팅 하려는 타입에 부합하지 않는다면 nil을 반환할 것이다.
        //as!로 강제 다운 캐스팅을 할시 위와 같이 nil을 반환하는것이 아닌 런타임 에러가 발생할것(지양해야함)
        if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            print(img)
            photoImageView.image = img
            
        }
        //ImageView에 넣어주고 modal을 닫아줌.
        self.dismiss(animated: true)
        
    }
}

