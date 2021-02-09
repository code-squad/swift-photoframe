//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by zombietux on 2021/02/08.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "만사의 사진액자"
        self.photoLabel.textColor = .systemRed
        self.photoLabel.backgroundColor = .systemGreen
        self.photoLabel.alpha = 0.9
        self.photoLabel.font = UIFont.systemFont(ofSize: 40)
        
        self.photoDescription.textColor = .systemGray
        self.photoDescription.alpha = 0.6
        self.photoDescription.font = UIFont.systemFont(ofSize: 20)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
}

