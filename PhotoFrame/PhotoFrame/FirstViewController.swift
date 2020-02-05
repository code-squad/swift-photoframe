//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 한천희 on 2020/02/04.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.firstLabel.text = "H 사진액자"
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
}

