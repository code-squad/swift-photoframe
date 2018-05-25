//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        self.photoLabel.text = "Mason의 사진액자"
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
        self.photoLabel.alpha = 0.7
        // 사용가능한 Font family name확인
        for name in UIFont.familyNames {
            print(name)
        }
        self.photoLabel.font = UIFont(name: "Zapfino", size: 30)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

