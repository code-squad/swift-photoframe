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
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor=UIColor.blue
        self.firstLabel.backgroundColor=UIColor.yellow
    }
    
    @IBAction func secondEventBtn(_ sender: Any) {
        self.firstLabel.alpha=0.5
    }
    

    
    @IBAction func closeButtonTouchedBlue(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        changeFont(self.firstLabel)
        
    }
    
    func changeFont(_ label:UILabel){
        label.text="Olaf의 사진액자"
        label.alpha=0.3
        label.backgroundColor=UIColor(displayP3Red: 0.5, green: 0.3, blue: 0.7, alpha: 0.3)
        label.textColor=UIColor(displayP3Red: 0.0, green: 0.3, blue: 0.5, alpha: 1)
        label.font=UIFont.systemFont(ofSize: CGFloat(50))
    }
    
    
}

