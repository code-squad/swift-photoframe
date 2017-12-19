//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by TaeHyeonLee on 2017. 12. 19..
//  Copyright © 2017년 ChocOZerO. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
        self.firstLabel.text = "Jake의 사진액자"
        self.firstLabel.textColor = UIColor.init(red: 1.0, green: 0.7, blue: 0.5, alpha: 0.6)
        self.firstLabel.backgroundColor = UIColor.gray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

