//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 김지나 on 11/03/2019.
//  Copyright © 2019 김지나. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "노리의 사진액자"
        self.firstLabel.textColor = UIColor.yellow
        self.firstLabel.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        self.firstLabel.font = firstLabel.font.withSize(50)
       
        self.firstDescription.text = "파덕?????"
        self.firstDescription.textColor = UIColor.blue.withAlphaComponent(0.5)
        self.firstDescription.backgroundColor = UIColor(red:0.97, green:0.98, blue:0.56, alpha:1.0)
        self.firstDescription.font = firstDescription.font.withSize(15)
        
        
        /*
        print(#file, #line, #function, #column)
        
         #file : /Users/jina/github/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift
         #line : 16
         #function : viewDidLoad()
         #column : 40 (16번 행의 40번 열에 있다. #column이 시작되는 곳이 40번이다.)
        */
    }


}

