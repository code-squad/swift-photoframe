//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 윤지영 on 28/11/2018.
//  Copyright © 2018 윤지영. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle(of: self.photoLabel, as: .Title)
        setStyle(of: self.photoDescription, as: .SubTitle)
    }

    private func setStyle(of label: UILabel, as customStyle: LabelStyle) {
        label.text = customStyle.defaultText
        label.textColor = customStyle.textColor
        customStyle.others(label)
    }

    private enum LabelStyle {
        case Title
        case SubTitle

        var defaultText: String {
            switch self {
            case .Title: return "제이미의 사진액자 🖼"
            case .SubTitle: return "아직 추가된 사진이 없습니다."
            }
        }

        var textColor: UIColor {
            switch self {
            case .Title: return UIColor.black
            case .SubTitle: return UIColor.lightGray
            }
        }

        var others: (UILabel) -> Void {
            switch self {
            case .Title:
                return applyTitleStyle(to:)
            case .SubTitle:
                return applySubTitleStyle(to:)
            }
        }

        private func applyTitleStyle(to label: UILabel) {
            let attributes: [NSAttributedString.Key : Any] = [
                NSAttributedString.Key.strokeColor : UIColor.darkGray,
                NSAttributedString.Key.foregroundColor : UIColor.white,
                NSAttributedString.Key.strokeWidth : -4.0,
                NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 40)]
            label.shadowColor = UIColor.lightGray
            label.shadowOffset = CGSize(width: 2, height: 2)
            label.attributedText = NSAttributedString.init(string: label.text ?? "", attributes: attributes)
        }

        private func applySubTitleStyle(to label: UILabel) {
            label.font = UIFont.boldSystemFont(ofSize: CGFloat(integerLiteral: 20))
        }
    }

}

