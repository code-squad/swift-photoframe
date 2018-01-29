//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by jack on 2018. 1. 26..
//  Copyright © 2018년 jack. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "Jack의 사진액자"
        self.firstDescription.text = "Kwon Jack's PhotoFrame"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5

    }
    
}

