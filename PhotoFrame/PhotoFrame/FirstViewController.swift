//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 김성현 on 20/06/2019.
//  Copyright © 2019 김성현. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = "SK의 사진 액자"
        firstLabel.textColor = UIColor(red: 1.0, green: 0.5, blue: 1.0, alpha: 1)
        
        firstDescription.text = "사진 액자입니다."
        firstDescription.font = UIFont(descriptor: .init(), size: 50)
    }

    @IBAction func nextButtomTapped(_ sender: Any) {
        firstLabel.textColor = UIColor.blue
        firstLabel.backgroundColor = UIColor.yellow
        firstLabel.alpha = 0.5
    }
    
}

