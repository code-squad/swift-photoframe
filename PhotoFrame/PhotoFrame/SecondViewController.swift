//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by TTOzzi on 2020/02/03.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.contentMode = .scaleToFill
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: String(format: "%02d", Int.random(in: 1...22)))
    }
    
}

