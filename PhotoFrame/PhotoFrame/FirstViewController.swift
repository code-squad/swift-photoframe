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
        
        // AttributeString 사용방법
        let descAttribute = [NSAttributedStringKey.backgroundColor : UIColor.orange]
        let descString = NSMutableAttributedString(string: "사진액자", attributes: descAttribute)
        let attrString = NSAttributedString(string: " 의 설명부분 입니다.")
        descString.append(attrString)
        
        // Using addAttribute
        var descRange = NSRange(location: 11, length: 5)
        descString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red, range: descRange)
        
        // Using addAttributes
        descRange = NSRange(location: 3, length: 10)
        let anotherAttribute = [NSAttributedStringKey.backgroundColor: UIColor.yellow]
        descString.addAttributes(anotherAttribute, range: descRange)
        
        self.firstDescription.attributedText = descString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

