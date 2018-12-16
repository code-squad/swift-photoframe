//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 조재흥 on 18. 12. 13..
//  Copyright © 2018 hngfu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.delegate = self
        self.photoImageView.contentMode = .scaleAspectFit
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "\(randomImageName()).jpg")
    }
    
    private func randomImageName() -> String {
        let random = arc4random_uniform(22) + 1
        return String(format: "%02d", random)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}
