//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 윤동민 on 17/12/2018.
//  Copyright © 2018 윤동민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.photoImageView.contentMode = .scaleAspectFit
    }

    @IBAction func nextImageTouched(_ sender: Any) {
        let imageName: String = String(format: "%02d", Int(arc4random_uniform(22))+1) + ".jpg"
        self.photoImageView.image = UIImage(named: imageName)
    }
}

