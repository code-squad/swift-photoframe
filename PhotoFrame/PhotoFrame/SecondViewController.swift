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
        let imageFormat = "jpg"
        let randomNumber = Int.random(in: firstImageNumber...lastImageNumber)
        let nameOfImage = "\(randomNumber).\(imageFormat)"
        return randomNumber < 10 ? "0\(nameOfImage)" : nameOfImage
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImage = makeRandomImage()
        self.photoImageView.image = UIImage(named: randomImage)
    }

}

