//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Elena on 11/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "00.jpg")
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImage = chooseRandomNumber()
        self.photoImageView.image = UIImage(named: randomImage)
    }
    
    // 랜덤으로 사진파일의 이름을 만들어 내는 함수
    func chooseRandomNumber() -> String {
        let firstImageNumber = 1, lastImageNumber = 22
        let randomNumber = Int.random(in: firstImageNumber...lastImageNumber)
        let imageName = String(format: "%02d.jpg", randomNumber)
        return imageName
    }


}

