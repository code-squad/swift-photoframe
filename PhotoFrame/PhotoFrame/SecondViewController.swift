//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by joon-ho kil on 6/13/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let imagePath = "Demo Images/"
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randNumber = Int.random(in: 1...22)
        self.photoImageView.image = UIImage(named: imagePath+String(randNumber)+".jpg")
    }

    override func viewDidLoad() {
        self.photoImageView.image = UIImage(named: imagePath+"01.jpg")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

