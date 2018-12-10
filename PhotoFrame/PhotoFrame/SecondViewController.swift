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
    @IBOutlet weak var photoLabel: TitleLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.setDefaultStyle()
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

}

