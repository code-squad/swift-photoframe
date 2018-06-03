//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    private let numberOfImages: UInt32 = 22
    private var currentImageNumber: UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let imageName: String = String(format: "Demo Images/%02d.jpg", self.generateRandomNumber())
        guard let photoImage = UIImage(named: imageName) else {
            return
        }
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.clipsToBounds = true
        self.photoImageView.image = photoImage
    }
    
    private func generateRandomNumber() -> UInt32 {
        // 이미 현재 이미지의 고르지 않도록 중복방지
        var randomNumber = arc4random_uniform(self.numberOfImages) + 1
        while randomNumber == self.currentImageNumber {
            randomNumber = arc4random_uniform(self.numberOfImages) + 1
        }
        self.currentImageNumber = randomNumber
        return randomNumber
    }
    
}
