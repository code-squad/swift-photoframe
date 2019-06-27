//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jang gukjin on 25/06/2019.
//  Copyright © 2019 jang gukjin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let fileNumber = Int.random(in: 1...22)
        let fileName = String(format: "%02d", fileNumber)+".jpg"
        self.photoImageView.image = UIImage(named: fileName)
    }
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

