//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 09/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private let imageExtension = ".jpg"
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        photoImageView.contentMode = .scaleAspectFill
    }
    
    @IBAction func nextImageButtonTouched(sender: Any) {
        let imageName = pickImageName()
        photoImageView.image = UIImage(named: imageName)
    }
    
    private func pickImageName() -> String {
        let pickedNumber = Int.random(in: 1...22)
        let imageName = pickedNumber < 10 ? "0\(pickedNumber)\(imageExtension)" : "\(pickedNumber)\(imageExtension)"
        return imageName
    }
}

