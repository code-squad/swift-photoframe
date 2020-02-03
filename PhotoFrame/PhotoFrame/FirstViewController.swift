//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 신한섭 on 2020/02/03.
//  Copyright © 2020 신한섭. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        self.firstLabel.text="Olaf의 사진액자"
        self.firstLabel.alpha=0.5
        self.firstLabel.backgroundColor=UIColor(displayP3Red: 0.5, green: 0.3, blue: 0.7, alpha: 0.3)
        self.firstLabel.textColor=UIColor(displayP3Red: 0.0, green: 0.3, blue: 0.5, alpha: 1)
        self.firstLabel.font=UIFont.systemFont(ofSize: CGFloat(50))
    }


}

