//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 2018. 1. 29..
//  Copyright © 2018년 yuaming. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        self.photoLabel.text = "AMING의 사진액자"
        self.photoLabel.textColor = UIColor(red: 0.333, green: 0.455, blue: 0.116, alpha: 1.0)
        self.photoLabel.font = UIFont.boldSystemFont(ofSize: 40)
        self.firstDescription.text = "AMING의 사진액자입니다 :)"
        self.firstDescription.textColor = UIColor.green
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

