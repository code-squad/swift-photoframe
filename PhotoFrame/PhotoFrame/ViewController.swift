//
//  ViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        self.firstLabel.text = "Neo 사진 액자"
        self.firstDescription.text = "Neo 설명"
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.firstLabel.alpha = 1
        self.firstLabel.font = .boldSystemFont(ofSize: 45)
        self.firstLabel.backgroundColor = .yellow
    }
}

