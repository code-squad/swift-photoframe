//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김지나 on 11/03/2019.
//  Copyright © 2019 김지나. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.photoImageView.image = UIImage(named: "01.jpg")
    }

    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomImageNumber = Int.random(in: 1 ... 22)
        let form = String(format: "%02d.jpg", randomImageNumber)
        self.photoImageView.image = UIImage(named: form)
        
    }
    
}

