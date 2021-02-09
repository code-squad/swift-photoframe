//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 심영민 on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        self.firstLabel.text = "JK의 사진액자"
        self.firstLabel.font = UIFont.systemFont(ofSize: 30)
        self.firstLabel.textColor = UIColor.purple
        self.firstLabel.backgroundColor = UIColor.darkGray
        
        self.firstDescription.text = "Loaded by FirstViewController"
        let font = UIFont(name: "Apple Color Emoji", size: 50)
        
        let attributeStr = NSMutableAttributedString(string: firstDescription.text!)
        attributeStr.addAttribute(.font, value: font, range: (firstDescription.text as! NSString).range(of: "First"))
        attributeStr.addAttribute(.foregroundColor, value: UIColor.blue, range: (firstDescription.text as! NSString).range(of: "First"))
        attributeStr.addAttribute(.backgroundColor, value: UIColor.red, range: (firstDescription.text as! NSString).range(of: "ller"))
        
        firstDescription.attributedText = attributeStr
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }

}

