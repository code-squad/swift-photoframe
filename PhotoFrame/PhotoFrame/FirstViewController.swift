//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by jang gukjin on 25/06/2019.
//  Copyright © 2019 jang gukjin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.photoLabel.text = "Aiden의 사진액자"
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.cyan
        self.photoLabel.font = UIFont(name: "Apple Color Emoji", size: 30)
        self.firstDescription.text = "Since 25.06.19"
        self.firstDescription.font = UIFont.italicSystemFont(ofSize: 20)
        self.firstDescription.alpha = 0.5
    }

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
}

