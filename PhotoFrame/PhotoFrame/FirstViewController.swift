//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2017. 12. 27..
//  Copyright © 2017년 심 승민. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultFont = UIFont.init(name: "Chalkduster", size: 35.0)
        let fontAttribute = [NSAttributedStringKey.font: defaultFont]
        let myString = NSMutableAttributedString(string: "Min's 사진액자", attributes: fontAttribute)
        let sizeRange = NSRange.init(location: 6, length: 4)
        let sizeAttribute = [NSAttributedStringKey.font: defaultFont?.withSize(33.0)]
        myString.addAttributes(sizeAttribute, range: sizeRange)
        let backgroundRange = NSRange(location: 0, length: 5)
        let backgroundAttribute = [NSAttributedStringKey.backgroundColor: UIColor.yellow]
        myString.addAttributes(backgroundAttribute, range: backgroundRange)
        photoLabel.attributedText = myString
        firstDescription.text = "일상 속으로"
        firstDescription.alpha = 0.5
        firstDescription.font = firstDescription.font.withSize(20.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
