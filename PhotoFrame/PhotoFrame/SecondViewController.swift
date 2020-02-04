//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Viet on 2020/02/03.
//  Copyright © 2020 Viet. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        viewImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImage()
    }

    fileprivate func viewImage() {
        let number = Int.random(in: 1...22)
        let fileName = String(format: "%02d", number) + ".jpg"
        self.photoImageView.image = UIImage(named: fileName)
    }
}

