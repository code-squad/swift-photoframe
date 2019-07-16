//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Daheen Lee on 09/07/2019.
//  Copyright © 2019 allwhite. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.textColor = .brown
        firstLabel.textAlignment = .right
        firstLabel.text = "흰의 사진 액자"
        
        let description = "NSMutableAttributedString 을 사용하여 설정되었습니다."
        let attributedString = NSMutableAttributedString(string: description)
        let yellowBackgroundAttribute: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.backgroundColor : UIColor.yellow,
            NSAttributedString.Key.foregroundColor : UIColor.blue,
            ]
        let convertedFirstLabelString = NSString(string: description)
        
        attributedString.setAttributes(yellowBackgroundAttribute
            , range: convertedFirstLabelString.range(of: "NSMutableAttributedString"))
        
        firstDescription.attributedText = attributedString
    }


}

