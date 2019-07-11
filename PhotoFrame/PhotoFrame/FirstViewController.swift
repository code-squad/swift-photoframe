//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 09/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    @IBOutlet weak var tadaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        photoLabel.text = "민디의 사진액자🥳"
        photoLabel.textColor = UIColor.init(red: 147/255, green: 203/255, blue: 255/255, alpha: 1)
        photoLabel.font = UIFont.systemFont(ofSize: 35, weight: .black)
        photoLabel.backgroundColor = UIColor.init(red: 219/255, green: 161/255, blue: 205/255, alpha: 0.3)
        
        photoDescription.text = "Photo by Mindy"
        photoDescription.alpha = 0.5
        photoDescription.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
}

