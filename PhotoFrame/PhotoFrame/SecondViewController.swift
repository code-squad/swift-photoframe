//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Eunjin Kim on 2018. 1. 30..
//  Copyright © 2018년 Eunjin Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber: UInt32 = arc4random_uniform(22) + 1;
        self.photoImageView.image = UIImage(named: String.init(format: "%02d.jpg", randomNumber))
    }
    
}

