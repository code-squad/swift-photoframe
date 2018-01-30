//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jack on 2018. 1. 26..
//  Copyright © 2018년 jack. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomPhotoNumber = arc4random_uniform(22) + 1
        if randomPhotoNumber < 10 {
                    self.photoImageView.image = UIImage(named: "0\(randomPhotoNumber).jpg")
            return
        }
        self.photoImageView.image = UIImage(named: "\(randomPhotoNumber).jpg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

