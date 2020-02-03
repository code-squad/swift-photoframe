//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by delma on 03/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "delma의 사진액자"
        self.photoLabel.textColor = .blue
        
        self.firstDescription.text = "사진 설명"
        self.firstDescription.textColor = .green
        self.firstDescription.sizeToFit()
        
        print(#file, #line, #function, #column)
    }


}

