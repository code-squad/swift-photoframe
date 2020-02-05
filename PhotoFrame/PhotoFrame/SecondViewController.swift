//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 신한섭 on 2020/02/04.
//  Copyright © 2020 신한섭. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let fileNumber = String(format: "%02d", Int.random(in: 1...22))
        self.photoImageView.image=UIImage(named:"\(fileNumber).jpg")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.contentMode = .scaleAspectFit
        self.photoImageView.clipsToBounds=true
    }
}
