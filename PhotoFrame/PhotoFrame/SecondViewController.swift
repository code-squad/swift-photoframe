//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김수현 on 2018. 5. 11..
//  Copyright © 2018년 김수현. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomNumber: UInt32 = arc4random_uniform(22)+1
        let imageName = String(format: "%02d.jpg", randomNumber)
        self.photoImageView.image = UIImage(named: imageName)
    }
    
}

