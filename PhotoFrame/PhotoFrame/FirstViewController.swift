//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by joon-ho kil on 6/13/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import UIKit

class FirstViewController:
    
    
    UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstDescr: UILabel!
    
    override func viewDidLoad() {
        
        self.firstLabel.text = "도미닉의 사진액자"
        let fontSize = UIFont.boldSystemFont(ofSize: 60)
        let descriptionFontSize = UIFont.boldSystemFont(ofSize: 40)
        let attributedString = NSMutableAttributedString(string: firstLabel.text ?? "도미닉의 사진액자")
        attributedString.addAttribute(kCTFontAttributeName as NSAttributedString.Key, value: fontSize, range: NSRange(location: 0, length: 3))
        attributedString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.black.withAlphaComponent(0.5), range: NSRange(location: 5, length: 4))
        
        firstLabel.attributedText = attributedString
        
        self.firstDescr.text = "바다 사진"
        let descriptionAttributedString = NSMutableAttributedString(string: firstDescr.text ?? "바다 사진")

        descriptionAttributedString.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.blue, range: NSRange(location: 0, length: 2))
        descriptionAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: 2))
        descriptionAttributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: 3, length: 2))
        descriptionAttributedString.addAttribute(kCTFontAttributeName as NSAttributedString.Key, value: descriptionFontSize, range: NSRange(location: 0, length: 5))
        
        firstDescr.attributedText = descriptionAttributedString
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
}

