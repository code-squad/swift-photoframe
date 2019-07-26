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
    let imageExtension = ".jpg"
    
    var imageNames = [String]()
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    func createImageObjects() {
        for name in imageNames {
            guard let image = UIImage(named: name) else {
                continue
            }
            images.append(image)
        }
    }
    
    func createImageNames() {
        for num in 1...9 {
            let imageName = "0\(num)\(self.imageExtension)"
            imageNames.append(imageName)
        }
        for num in 10...22 {
            let imageName = "\(num)\(self.imageExtension)"
            imageNames.append(imageName)
        }
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

