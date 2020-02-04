//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by JW on 2020/02/04.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        firstLabel.text = "Anna의 사진액자"
        firstLabel.backgroundColor = UIColor(red: 198/255, green: 164/255, blue: 222/255, alpha: 0.8)
        firstLabel.textColor = .white
        firstLabel.textAlignment = .center
        
        firstDescription.text = "2020 Photo Collection"
    }
    @IBAction func nextButtonTouched(_ sender: Any) {
        firstLabel.textColor = .blue
        firstLabel.backgroundColor = .yellow
        firstLabel.alpha = 0.5
    }
}
