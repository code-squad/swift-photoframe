//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 윤지영 on 28/11/2018.
//  Copyright © 2018 윤지영. All rights reserved.
//

import UIKit

protocol CustomStyle {
    func setDefaultStyle()
}

class TitleLabel: UILabel, CustomStyle {
    private struct Default {
        static let text = "제이미의 사진액자 🖼"
        static let textColor = UIColor.black
        static let shadowColor = UIColor.lightGray
        static let shadowOffset = CGSize(width: 2, height: 2)
        static let attributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.strokeColor : UIColor.darkGray,
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.strokeWidth : -4.0,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 40)]
    }

    func setDefaultStyle() {
        self.text = Default.text
        self.textColor = Default.textColor
        self.shadowColor = Default.shadowColor
        self.shadowOffset = Default.shadowOffset
        self.attributedText = NSAttributedString(string: self.text ?? String(), attributes: Default.attributes)
    }

}

class SubTitleLabel: UILabel, CustomStyle {
    private struct Default {
        static let text = "아직 추가된 사진이 없습니다."
        static let textColor = UIColor.lightGray
        static let font = UIFont.boldSystemFont(ofSize: CGFloat(integerLiteral: 20))
    }

    func setDefaultStyle() {
        self.text = Default.text
        self.textColor = Default.textColor
        self.font = Default.font
    }

}

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: TitleLabel!
    @IBOutlet weak var photoDescription: SubTitleLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.setDefaultStyle()
        photoDescription.setDefaultStyle()
    }

}
