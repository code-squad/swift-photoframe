//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 서우석 on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "Ray의 사진액자"
        self.firstDescription.text = "Created by Suh"
        self.firstDescription.textColor = UIColor.white
        self.firstDescription.backgroundColor = UIColor.blue
        self.firstDescription.font = UIFont.boldSystemFont(ofSize: 15)
        print(#file, #line, #function, #column)
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
}

