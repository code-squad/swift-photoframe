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
    @IBOutlet weak var firstDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
        self.firstLabel.text = "Jakestagram"
        self.firstLabel.textColor = UIColor.init(red: 0.2, green: 1.0, blue: 0.2, alpha: 0.7)
        self.firstLabel.backgroundColor = UIColor.lightGray

        self.firstDescription.text = "story about Jake"
        self.firstDescription.textColor = UIColor.init(red: 0.3, green: 0.1, blue: 0.9, alpha: 0.9)
        self.firstDescription.backgroundColor = UIColor.init(red: 0.4, green: 0.2, blue: 0.8, alpha: 0.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }

}

