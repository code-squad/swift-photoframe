//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Daheen Lee on 09/07/2019.
//  Copyright © 2019 allwhite. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    @IBAction func animationButtonTouched(_ sender: UIButton) {
        sender.isSelected.toggle()
        switch sender.isSelected {
        case true:
            photoImageView.startAnimating()
        case false:
            photoImageView.stopAnimating()
        }
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        guard let randomImage = images.randomElement() else {
            self.photoImageView.image = images[0]
            return
        }
        self.photoImageView.image = randomImage
    }
    
}

