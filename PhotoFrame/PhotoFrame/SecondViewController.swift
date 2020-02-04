//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Chaewan Park on 2020/02/03.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImageName = String(format: "%02d", Int.random(in: 1...22))
        self.photoImageView.image = UIImage(named: randomImageName)
    }
}

