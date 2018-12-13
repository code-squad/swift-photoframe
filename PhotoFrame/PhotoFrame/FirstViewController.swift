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
        
        print(#file, #line, #function, #column)
    }


}

