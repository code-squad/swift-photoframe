//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by sonjuhyeong on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
   
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.photoLabel.text = "Aiden의 사진액자"
        self.photoLabel.textColor = .white
        self.photoLabel.backgroundColor = .black
        self.photoLabel.font = .systemFont(ofSize: 25)
        self.photoLabel.adjustsFontSizeToFitWidth = true
        self.photoLabel.textAlignment = .center
        
        self.firstDescription.text = "환영합니다"
        self.firstDescription.textColor = .black
        self.firstDescription.font = .systemFont(ofSize: 20)
        self.firstDescription.adjustsFontSizeToFitWidth = true
        self.firstDescription.textAlignment = .center
    }
}
