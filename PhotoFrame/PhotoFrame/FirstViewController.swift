//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by kimdo2297 on 2020/02/03.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        customizeFirstLabel()
        customizeFirstDescription()
    }
    
    private func customizeFirstLabel() {
        setText(label : firstLabel, text : "Jason의 사진 액자")
        setColor(label : firstLabel, color : UIColor.green)
        setLableFontAndSizePartly(label: firstLabel,
                                  name: "Apple Color Emoji",
                                  size: 50,
                                  range: (firstLabel.text! as NSString).range(of: "Jason"))
    }
    
    private func customizeFirstDescription() {
        setText(label : firstDescription, text : "hello world")
        setColor(label : firstDescription, color : UIColor.red)
        setLableFontAndSizePartly(label: firstDescription,
                                  name: "Apple Color Emoji",
                                  size: 20,
                                  range: (firstDescription.text! as NSString).range(of: "hello"))
    }
    
    private func setText(label : UILabel, text : String) {
        label.text = text
    }
    
    private func setColor(label : UILabel, color : UIColor) {
        label.textColor = color
    }
    
    private func setLableFontAndSizePartly(label : UILabel, name fontName : String, size : CGFloat, range : NSRange) {
        if let font = UIFont(name: fontName, size: size) {
            let attributedStr = NSMutableAttributedString(string: label.text!)
            attributedStr.addAttribute(kCTFontAttributeName as NSAttributedString.Key,
                                       value: font,
                                       range: range)
            label.attributedText = attributedStr
        }
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }

    @IBAction func nextButtonDragged(_ sender: Any) {
        self.firstLabel.textColor = UIColor.red
        self.firstLabel.backgroundColor = UIColor.cyan
    }
    
    @IBAction func prevButtonTouched(_ sender: Any) {
        self.firstDescription.textColor = UIColor.brown
    }
}
