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
        self.photoImageView.image = UIImage(named: String.init(format: "%02d.jpg", randomPhotoNumber))
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

