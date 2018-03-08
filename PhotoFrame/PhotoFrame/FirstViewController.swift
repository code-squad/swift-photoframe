//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Eunjin Kim on 2018. 1. 30..
//  Copyright © 2018년 Eunjin Kim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "Elly의 사진액자"
        self.firstDescription.text = "글자색, 배경색, 투명도, 글자 크기를 바꿈"
        self.firstDescription.textColor = UIColor.white
        self.firstDescription.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        self.firstDescription.font = UIFont.boldSystemFont(ofSize: 15)
        print(#file, #line, #function, #column)
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

