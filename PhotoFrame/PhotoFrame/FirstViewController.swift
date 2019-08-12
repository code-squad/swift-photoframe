//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureFirstLabel()
        configureFirstDescription()
    }
    
    // MARK: - Configure Method
    private func configureFirstLabel() {
        self.firstLabel.text = "부엉이의 사진액자🦉"
        self.firstLabel.textColor = .brown
        self.firstLabel.font = .preferredFont(forTextStyle: .largeTitle)
        self.firstLabel.backgroundColor = UIColor.brown.withAlphaComponent(0.3)
        self.firstLabel.shadowColor = .brown
        self.firstLabel.baselineAdjustment = .alignCenters
        
    }
    
    private func configureFirstDescription() {
        let string = "🗾🎑🏞🌅🌄🌆🏙🎆🌇🌌🌠🎇🌃🌉🌁🖼"
        let attributedString = NSMutableAttributedString.init(string:  string)
        let randomSize = { CGFloat.random(in: 10...60) }
        let randomColor  = { CGFloat.random(in: 0...1) }
        
        for i in 0..<string.count {
            attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: randomSize() ), range: NSRange(i*2...i*2+1))
            attributedString.addAttribute(.backgroundColor, value: UIColor.init(red: randomColor(), green: randomColor(), blue: randomColor(), alpha: randomColor()), range: NSRange(i*2...i*2+1))
        }
        self.firstDescription.attributedText = attributedString
        self.firstDescription.preferredMaxLayoutWidth = 200
        self.firstDescription.numberOfLines = 4
    }
    
}

