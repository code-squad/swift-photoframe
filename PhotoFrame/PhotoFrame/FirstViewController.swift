//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by hw on 21/06/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    override func viewDidLoad() {
        willSetFirstViewSetting()
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    
    private func willSetFirstViewSetting() {
        self.firstLabel.text = "Doran의 사진액자"
        self.firstLabel.font = UIFont(name: "Times New Roman", size: 19)
        self.firstLabel.textColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        self.firstLabel.backgroundColor = UIColor(displayP3Red: 0.6, green: 0.7, blue: 0.65, alpha: 1.0)
        
        self.firstDescription.text = "FirstViewController에 의해 로딩"
        self.firstDescription.font = UIFont(name: "Times New Roman", size: 10)
        self.firstDescription.textColor = UIColor(displayP3Red: 0.9, green: 0.5, blue: 0.3, alpha: 1.0)
    }
    
}
