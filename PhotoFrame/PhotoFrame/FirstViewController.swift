//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 조재흥 on 18. 12. 13..
//  Copyright © 2018 hngfu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.photoLabel.text = "흥푸의 사진애크자"
        self.photoLabel.textColor = UIColor.red
        self.photoLabel.backgroundColor = UIColor.blue
        self.photoLabel.alpha = 0.7
        self.photoLabel.font = UIFont.systemFont(ofSize: 26)
        
        self.firstDescription.text = "애크자(x) -> 액자(o)"
        self.firstDescription.textColor = UIColor.lightGray
        self.firstDescription.backgroundColor = UIColor.darkGray
        self.firstDescription.alpha = 0.3
        self.firstDescription.font = UIFont.systemFont(ofSize: 20)
        print(#file, #line, #function, #column)
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }

    @IBAction func doGreeting(_ sender: Any) {
        print("Hi~! I'm Hngfu,")
        print("Where do you want to go?")
    }
}

