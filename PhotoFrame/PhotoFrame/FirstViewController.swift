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
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeFirstLabel()
        initializeFirstDescription()
    private func initializeFirstLabel() {
        firstLabel.text = "흰의 사진 액자"
        firstLabel.textAlignment = .center
        firstLabel.numberOfLines = 0
        firstLabel.lineBreakMode = .byWordWrapping
    }

    private func initializeFirstDescription() {
        firstDescription.numberOfLines = 0
        firstDescription.lineBreakMode = .byWordWrapping
        let description = "This desciription is created using NSMutableAttributedString"
        let highlightedWord = "NSMutableAttributedString"
        let attributedString = NSMutableAttributedString(string: description)
        let yellowBackgroundAttribute: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.backgroundColor : UIColor.yellow,
            NSAttributedString.Key.foregroundColor : UIColor.blue ]
        let convertedFirstLabelString = NSString(string: description)
        attributedString.setAttributes(yellowBackgroundAttribute, range: convertedFirstLabelString.range(of: highlightedWord))
        firstDescription.attributedText = attributedString
    }
}

