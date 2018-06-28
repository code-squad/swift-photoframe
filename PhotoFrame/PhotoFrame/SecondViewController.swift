//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Yoda Codd on 2018. 6. 28..
//  Copyright © 2018년 Drake. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
        self.photoLabel.text = "Drake 의 사진액자"
//        self.photoLabel.isHighlighted = true
        self.photoLabel.highlightedTextColor = UIColor.purple
        self.photoLabel.shadowColor = UIColor.gray
        self.photoLabel.shadowOffset = CGSize.init(width: 10, height: 20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

