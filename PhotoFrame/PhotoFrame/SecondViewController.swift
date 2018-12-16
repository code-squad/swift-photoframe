//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 조재흥 on 18. 12. 13..
//  Copyright © 2018 hngfu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
    }
    
    private func randomImageName() -> String {
        let random = arc4random_uniform(22) + 1
        return String(format: "%02d", random)
    }
    
}
