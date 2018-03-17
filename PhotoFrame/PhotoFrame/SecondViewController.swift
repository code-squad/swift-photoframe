//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by YOUTH on 2018. 3. 9..
//  Copyright © 2018년 JINiOS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "DemoImages/01.jpg")
    }
    
}

