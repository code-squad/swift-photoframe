//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 오킹 on 2021/02/09.
//
import UIKit
import Foundation

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        self.firstLabel.text = "Hong의 사진"
        self.firstDescription.text = "Hong의 사진입니다"
        
        //text 부분적으로 색상 변화
        let fontAttribute = NSMutableAttributedString(string: firstLabel.text!)
        fontAttribute.addAttribute(.foregroundColor, value: UIColor.red, range: (firstLabel.text! as NSString).range(of: "Hong"))
        fontAttribute.addAttribute(.foregroundColor, value: UIColor.blue, range: (firstLabel.text! as NSString).range(of: "사진"))
        
        self.firstLabel.backgroundColor = UIColor.green
        self.firstLabel.alpha = 0.5
        self.firstLabel.font = .systemFont(ofSize: 60)
        self.firstLabel.attributedText = fontAttribute
        self.firstDescription.alpha = 0.5
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
}
