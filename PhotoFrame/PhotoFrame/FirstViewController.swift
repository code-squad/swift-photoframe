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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

