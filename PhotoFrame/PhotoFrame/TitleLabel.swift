//
//  TitleLabel.swift
//  PhotoFrame
//
//  Created by Elena on 13/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class TitleLabel: UILabel {
    //https://developer.apple.com/documentation/uikit/uicolor
    
    private struct titleLabel {
        static let text = "Cony의 사진액자"
        static let textColor = UIColor.black
        static let shadowColor = UIColor.lightGray
        static let shadowOffset = CGSize(width: 3, height: 2)
        static let attributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.strokeColor : UIColor.yellow,
            NSAttributedString.Key.foregroundColor : UIColor.black,
            NSAttributedString.Key.strokeWidth : -1.0,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 50)]
    }
    
    func setTitleLabelStyle() {
        self.text = titleLabel.text
        self.textColor = titleLabel.textColor
        self.shadowColor = titleLabel.shadowColor
        self.shadowOffset = titleLabel.shadowOffset
        self.attributedText = NSAttributedString(string: self.text ?? String(), attributes: titleLabel.attributes)
    }
    
}
