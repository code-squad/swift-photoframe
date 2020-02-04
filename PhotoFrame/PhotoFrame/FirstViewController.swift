//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by TTOzzi on 2020/02/03.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "또치의 사진액자"
        self.firstLabel.textColor = .white
        self.firstLabel.backgroundColor = .darkGray
        self.firstDescription.text = "스위프트 어려워요"
        self.firstDescription.font = .systemFont(ofSize: 50, weight: .bold)
        self.firstDescription.textColor = .brown
    }
}

