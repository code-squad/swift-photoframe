//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by oingbong on 2018. 9. 11..
//  Copyright © 2018년 oingbong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("First : " , #file ,  #line ,  #function , #column)
        
        self.firstLabel.text = "오잉봉의 사진액자"
        self.firstLabel.textColor = UIColor.green
        self.firstLabel.shadowColor = UIColor.darkGray
        self.firstLabel.shadowOffset = CGSize.init(width: 5, height: 5)
        
        self.firstDescription.textColor = UIColor.red
        self.firstDescription.lineBreakMode = NSLineBreakMode.byClipping
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

