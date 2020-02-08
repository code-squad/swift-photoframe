//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jinie on 2020/02/04.
//  Copyright © 2020 jinie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let number = Int.random(in: 1...22)
        let filename = String(format: "%02d", number) + ".jpg"
        self.photoImageView.image = UIImage(named: filename)
    }
    
}
